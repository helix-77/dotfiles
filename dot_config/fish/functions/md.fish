function md --description "Activate MarkItDown environment"

    set -l VENV "$HOME/markitdown-env"

    if not test -d $VENV
        echo "❌ MarkItDown virtual environment not found."
        echo "Expected: $VENV"
        return 1
    end

    source $VENV/bin/activate.fish

    echo
    echo "==============================================="
    echo "✅ MarkItDown environment activated"
    echo
    echo "Now execute:"
    echo
    echo "  markitdown <file.type/url> -o <output.md>"
    echo
    echo "Examples:"
    echo "  markitdown report.pdf -o report.md"
    echo "  markitdown lecture.pptx -o lecture.md"
    echo "  markitdown https://example.com -o page.md"
    echo "==============================================="
    echo

end
