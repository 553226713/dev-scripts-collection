#!/bin/bash
# Docker Helper Script
# Usage: ./docker-helper.sh [command]

COMPOSE_FILE="docker-compose.yml"

case "$1" in
  up)
    echo "🚀 Starting Docker containers..."
    docker-compose up -d
    ;;
  down)
    echo "🛑 Stopping Docker containers..."
    docker-compose down
    ;;
  logs)
    echo "📜 Showing logs..."
    docker-compose logs -f
    ;;
  restart)
    echo "🔄 Restarting containers..."
    docker-compose restart
    ;;
  clean)
    echo "🧹 Cleaning up Docker..."
    docker-compose down -v
    docker system prune -f
    ;;
  build)
    echo "🔨 Building images..."
    docker-compose build --no-cache
    ;;
  ps)
    echo "📊 Container status:"
    docker-compose ps
    ;;
  shell)
    echo "🐚 Opening shell in container..."
    docker-compose exec app sh
    ;;
  *)
    echo "Docker Helper - Usage: $0 {up|down|logs|restart|clean|build|ps|shell}"
    echo ""
    echo "Commands:"
    echo "  up      - Start all containers"
    echo "  down    - Stop all containers"
    echo "  logs    - Follow container logs"
    echo "  restart - Restart all containers"
    echo "  clean   - Remove containers and prune Docker"
    echo "  build   - Build images without cache"
    echo "  ps      - Show container status"
    echo "  shell   - Open shell in app container"
    exit 1
    ;;
esac
