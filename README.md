# 🧱 Valkey Cluster Docker Image

This repository provides a **custom Valkey Cluster Docker image** based on the official Valkey source.  
It is preconfigured to run a **6-node Valkey Cluster** (3 masters + 3 replicas) for local development or testing purposes.  
Detailed documentation and updates can be found on the [official project page](https://ercan.dev/projects/valkey-cluster-docker-image).

---

## 🚀 Features

- Built on top of the **official Valkey image**
- Configured for **cluster mode** (6 nodes: ports `30001` - `30006`)
- Simplified setup with a one-time initialization command
- Ideal for **development**, **testing**, or **learning Valkey Cluster internals**

---

## 🧩 How It Works

Each container instance runs six Valkey nodes internally, each bound to ports from `30001` to `30006`.  
After the first startup, you only need to initialize the cluster manually once.  
All nodes are automatically connected and configured in cluster mode.

---

## 🐳 Run the Container

To start your Valkey Cluster container:

```bash
docker run -d \
  -p 30001-30006:30001-30006 \
  --name valkey-cluster \
  ercansormaz/valkey-cluster
```

This command will:
- Start the container in detached mode
- Map host ports `30001-30006` to container ports `30001-30006`
- Create a container named `valkey-cluster`

---

## ⚙️ Initialize the Cluster

Once the container is running, execute the following **one-time setup** command to initialize the Valkey Cluster:

```bash
docker exec -it valkey-cluster create-cluster create
```

This will:
- Connect all 6 nodes together
- Assign 3 master and 3 replica roles
- Enable full cluster mode operation

After this step, your cluster is ready to use!

---

## 🧠 Verify Cluster Status

You can verify the cluster configuration by running:
```bash
docker exec -it valkey-cluster valkey-cli -p 30001 cluster info
```

Or view connected nodes:
```bash
docker exec -it valkey-cluster valkey-cli -p 30001 cluster nodes
```

---

## 🧼 Stop & Cleanup

To stop the cluster:
```bash
docker stop valkey-cluster
```

To remove it completely:
```bash
docker rm -f valkey-cluster
```

---

## 🔍 Troubleshooting

- Cluster not initialized?  
  Make sure you’ve run the `create-cluster create` command once after first start.

- Ports already in use?  
  Ensure that ports `30001-30006` are free before running the container.

---

## 📦 Docker Hub

You can pull the image directly from Docker Hub:
```bash
docker pull ercansormaz/valkey-cluster
```

---

## 📜 License
This project is licensed under the MIT License.
