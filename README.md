# 📂 SQL Diff Pro: Side-by-Side Code Comparer

A lightweight, high-performance web utility built with Vanilla JavaScript for comparing SQL scripts. This tool solves the "wall of text" problem by aligning code blocks side-by-side and providing synchronized navigation through logic changes.

🌟 Key Features

* **Dual-Pane Side-by-Side View**: Map "Original" vs "Modified" code with perfectly aligned line numbers.
* **Synchronized Scrolling**: High-fidelity scrolling logic-scrolling one pane automatically moves the other to maintain visual parity.
* **Change Block Navigation**: Jump instantly between deletions and additions using `Prev` and `Next` controls.
* **Smart Alignment Logic**: Automatically detects line mismatches and inserts visual "spacers" to keep corresponding SQL clauses level.
* **Local File Support**: Uses the HTML5 File API to read `.sql` or `.txt` files directly from your machine without server-side processing.
* **Responsive Dark/Light Mode**: Full theme support via CSS Variables for optimal readability.

## 🛠️ Technical Implementation

### Synchronized Scrolling
To ensure a smooth user experience, I implemented an event-driven synchronization system:
```javascript
function syncScroll(source, targetId) {
    const target = document.getElementById(targetId);
    target.scrollTop = source.scrollTop;
    target.scrollLeft = source.scrollLeft;
}
```

This ensures that even with long, complex stored procedures, the developer never loses context between the two versions.

**Alignment Algorithm**:
 The tool uses a linear comparison approach that identifies "hunks" of changes. When a line exists in Version B but not Version A, the engine renders an .empty-line spacer in the left pane to preserve the vertical alignment of the surrounding code.

## 🚀 Getting Started

Follow these steps to get a local copy up and running.

### 1. Prerequisites
Since this is a client-side web application, you do not need to install any servers, databases, or runtimes (like Node.js or Python). All you need is a modern web browser (Chrome, Firefox, Edge, or Safari).

### 2. Installation
1. **Clone the repository:**
   ```bash
   git clone [https://github.com/bishnupc/sql-diff-pro.git]
   ```
2. **Navigate to the directory:**
   ```bash
   cd sql-diff-pro
   ```
3. **Launch the App:**
   Simply double-click the **index.html** file to open it in your default browser.

### 2. Quick Start Demo
To see the tool in action without writing your own code:
1. Open the app in your browser.
2. Open the demo_left.sql file provided in this repo and copy the contents into the Original SQL window.
3. Open demo_right.sql and copy the contents into the Modified SQL window.
4. Click the Compare Side-by-Side button.
5. Use the Next Change button to navigate through the highlighted schema modifications.

## 🖥️ Usage Tips
1. **Theme Toggle:** Use the 🌓 icon in the header to switch between Light and Dark modes based on your environment.
2. **File Upload:** Instead of copy-pasting, click the 📂 Load button to import large .sql files directly.
3. **Scroll Sync:** Scroll either pane; the sibling pane will automatically stay aligned to ensure you're looking at the same block of code.
