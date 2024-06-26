# courseSelling

### Step 1: Stop All Running Containers
Stop all running containers:

```bash
docker stop $(docker ps -q)
```

### Step 2: Remove All Containers
Remove all containers:

```bash
docker rm $(docker ps -a -q)
```

### Step 3: Remove All Images
Once all containers are stopped and removed, you can delete all images:

```bash
docker rmi $(docker images -q)
```

### Combined Steps
You can combine these steps into a single sequence of commands:

```bash
docker stop $(docker ps -q) && docker rm $(docker ps -a -q) && docker rmi $(docker images -q)
```

### Explanation
1. `docker ps -q`: Lists the IDs of all running containers.
2. `docker ps -a -q`: Lists the IDs of all containers (both running and stopped).
3. `docker images -q`: Lists the IDs of all images.

This process ensures that you stop and remove all containers before deleting all images. This prevents any conflicts or errors due to containers still using the images.