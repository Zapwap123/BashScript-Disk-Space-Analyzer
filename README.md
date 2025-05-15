# Disk Space Analyzer

A simple Bash script to analyze disk usage and identify the largest directories and files in a given path.

## Features

- Lists top 10 largest directories
- Lists top 10 largest files
- Supports any target path
- Default path is the current directory

## Usage

### 1. Clone the repository\*\*:

```bash
git clone https://github.com/Zapwap123/BashScript-Disk-Space-Analyzer
cd BashScript-Disk-Space-Analyzer
```

### 2. Make the script executable:

```bash
chmod +x diskSpaceAnalyzer.sh
```

### 3. Run the script:

```bash
./diskSpaceAnalyzer.sh [optional_path]
```

- If no path is given, it uses the current directory.
- Example:

```bash
./diskSpaceAnalyzer.sh /home/user/Documents
```

## Output

- **Top 10 Largest Directories**: Sorted by size using `du`
- **Top 10 Largest Files**: Sorted by size using `find` and `du`

## Requirements

- Bash shell
- Unix-like environment (Linux, macOS)
- Standard utilities: `du`, `find`, `sort`, `head`

## License

MIT License
