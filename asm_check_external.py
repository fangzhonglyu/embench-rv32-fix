def check_external(asm_path):
    with open(asm_path, 'r') as f:
        asm_content = f.read()
    externals = set()
    defined = set()

    for line in asm_content.splitlines():
        line = line.strip()
        if line.startswith('.globl'):
            parts = line.split()
            if len(parts) >= 2:
                externals.add(parts[1])
        if line.startswith('call'):
            parts = line.split()
            if len(parts) >= 2:
                target = parts[1]
                if target not in defined:
                    externals.add(target)
        if line.endswith(':') and not line.startswith('.'):
            label = line[:-1].strip()
            if label and not label.startswith('.'):
                defined.add(label)
    return externals - defined

import sys
import os

if __name__ == "__main__":
    # Get all .s files in specified directory, recursively
    asm_dir = sys.argv[1]
    verbose = False
    if len(sys.argv) > 2 and (sys.argv[2] == '--verbose' or sys.argv[2] == '-v'):
        verbose = True
    asm_files = []
    for root, dirs, files in os.walk(asm_dir):
        for file in files:
            if file.endswith('.s'):
                asm_files.append(os.path.join(root, file))
    # Check each asm file for external references
    for asm_file in asm_files:
        externals = check_external(asm_file)
        if externals:
            print(f"[ERROR] File: {asm_file} has external references", end=': ')
            builtins = [e for e in externals if e.startswith('__')]
            no_builtins = [e for e in externals if not e.startswith('__')]
            if verbose:
                print(f"{', '.join(externals)}", end=' ')
            else:
                if builtins:
                    print(f"[FLOAT_OPS...] ", end=' ')
                if no_builtins:
                    print(f"{', '.join(no_builtins)}", end=' ')
            print()  # New line after each file's output
        else:
            print(f"[OK] File: {asm_file}")