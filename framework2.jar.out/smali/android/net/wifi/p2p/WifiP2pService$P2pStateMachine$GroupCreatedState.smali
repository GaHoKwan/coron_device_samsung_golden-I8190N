.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;
.super Lcom/android/internal/util/State;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupCreatedState"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 1725
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1728
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->getName()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1730
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mIsGotoJoinState:Z
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1731
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mIsGotoJoinState:Z
    invoke-static {v1, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11202(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)Z

    .line 1765
    :cond_0
    :goto_0
    return-void

    .line 1733
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1734
    .local v0, tWifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$11300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1735
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v2

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;
    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$11302(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/wifi/WifiManager$WifiLock;)Landroid/net/wifi/WifiManager$WifiLock;

    .line 1737
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$11300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 1738
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$2200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/NetworkInfo;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v5, v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateThisDevice(I)V
    invoke-static {v1, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)V

    .line 1743
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1744
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v2, "192.168.49.1"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setWifiP2pInfoOnGroupFormation(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1745
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pConnectionChangedBroadcast()V
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    goto :goto_0

    .line 1746
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pStaticIpConfig:Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;->candidateStaticIp:I

    if-eqz v1, :cond_0

    .line 1748
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8902(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1749
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    .line 1750
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1751
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v2, "192.168.49.1"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setWifiP2pInfoOnGroupFormation(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1752
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pStaticIpConfig:Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;

    move-result-object v1

    iput-boolean v4, v1, Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;->isStaticIp:Z

    .line 1753
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mConnectedDevicesCnt:I
    invoke-static {v1, v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$11602(Landroid/net/wifi/p2p/WifiP2pService;I)I

    .line 1754
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->showNotification()V
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1755
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pConnectionChangedBroadcast()V
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1757
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/WifiNative;->setP2pPowerSave(Ljava/lang/String;Z)Z

    goto/16 :goto_0
.end method

.method public exit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2131
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mIsGotoJoinState:Z
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2132
    const-string v0, "WifiP2pService"

    const-string v1, "=========== Exit GroupCreatedState"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedProvDiscDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$12002(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2135
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$11300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2136
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$11300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 2137
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$6200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/PowerManager$DVFSLock;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2138
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$6200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/PowerManager$DVFSLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$DVFSLock;->release()V

    .line 2139
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const/4 v1, 0x3

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateThisDevice(I)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)V

    .line 2140
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setWifiP2pInfoOnGroupTermination()V
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$13400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 2141
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$2200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/NetworkInfo;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pConnectionChangedBroadcast()V
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 2143
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearNotification()V
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$13500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 2144
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const/4 v1, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mRequestNfcCalled:Z
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$12902(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)Z

    .line 2146
    :cond_2
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 24
    .parameter "message"

    .prologue
    .line 1769
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "{ what="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " }"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1770
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    sparse-switch v19, :sswitch_data_0

    .line 2125
    const/16 v19, 0x0

    .line 2127
    :goto_0
    return v19

    .line 1773
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService;->access$6200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/PowerManager$DVFSLock;

    move-result-object v19

    if-eqz v19, :cond_0

    .line 1774
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const-string v20, "DVFS - acquire"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1775
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService;->access$6200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/PowerManager$DVFSLock;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$DVFSLock;->acquire()V

    .line 1777
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->stopLegacyWifiScan(Z)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)V

    .line 2127
    :cond_1
    :goto_1
    const/16 v19, 0x1

    goto :goto_0

    .line 1780
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService;->access$6200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/PowerManager$DVFSLock;

    move-result-object v19

    if-eqz v19, :cond_2

    .line 1781
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const-string v20, "DVFS - release"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1782
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService;->access$6200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/PowerManager$DVFSLock;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$DVFSLock;->release()V

    .line 1784
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->stopLegacyWifiScan(Z)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)V

    goto :goto_1

    .line 1790
    :sswitch_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    .line 1792
    .local v18, timeout:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->p2pFlushFind(I)Z

    .line 1793
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const v20, 0x22003

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto :goto_1

    .line 1796
    .end local v18           #timeout:I
    :sswitch_3
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 1797
    .local v14, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-result-object v19

    if-eqz v19, :cond_1

    .line 1798
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)I

    move-result v19

    move/from16 v0, v19

    if-ne v14, v0, :cond_1

    .line 1799
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Invitation timed out in Multi-connecting : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v21, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/net/wifi/p2p/WifiP2pConfigList;->getConfigIndex(I)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1801
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v21, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/net/wifi/p2p/WifiP2pConfigList;->getConfigIndex(I)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8902(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1802
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x2

    invoke-virtual/range {v19 .. v21}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    .line 1803
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1805
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11908(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)I

    .line 1806
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pConfigList;->getConfigIndex(I)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v19

    if-nez v19, :cond_3

    .line 1807
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11802(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfigList;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    .line 1808
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11902(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)I

    .line 1809
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->stopLegacyWifiScan(Z)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)V

    goto/16 :goto_1

    .line 1811
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x23033

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)I

    move-result v22

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v20

    const-wide/16 v21, 0x7530

    invoke-virtual/range {v19 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1813
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const v20, 0x22007

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 1819
    .end local v14           #index:I
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectedP2pGroupAddress:Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7902(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1821
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1822
    .local v9, device:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v10, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 1833
    .local v10, deviceAddress:Ljava/lang/String;
    if-eqz v10, :cond_7

    .line 1834
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;
    invoke-static {v0, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8902(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1835
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedProvDiscDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$12000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v19

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedProvDiscDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$12000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1837
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedProvDiscDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$12002(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1839
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$12100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$12200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v10, v1, v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->addClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    .line 1841
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ap sta connected"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1842
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->size()I

    move-result v20

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mConnectedDevicesCnt:I
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$11602(Landroid/net/wifi/p2p/WifiP2pService;I)I

    .line 1843
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->showNotification()V
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1844
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1845
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pStaticIpConfig:Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;->candidateStaticIp:I

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 1847
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pStaticIpConfig:Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;->mThisDeviceStaticIp:I

    move/from16 v20, v0

    const/high16 v21, 0x100

    add-int v15, v20, v21

    move-object/from16 v0, v19

    iput v15, v0, Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;->mThisDeviceStaticIp:I

    .line 1848
    .local v15, mNextIpAddr:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v19

    const-string v20, "static_ip"

    invoke-static {v15}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/net/wifi/WifiNative;->p2pSet(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1850
    .end local v15           #mNextIpAddr:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-result-object v19

    if-eqz v19, :cond_1

    .line 1851
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11908(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)I

    .line 1852
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pConfigList;->getConfigIndex(I)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v19

    if-nez v19, :cond_6

    .line 1853
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11802(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfigList;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    .line 1854
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11902(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)I

    .line 1855
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->stopLegacyWifiScan(Z)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)V

    goto/16 :goto_1

    .line 1857
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x23033

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)I

    move-result v22

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v20

    const-wide/16 v21, 0x7530

    invoke-virtual/range {v19 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1859
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const v20, 0x22007

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 1863
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const-string v20, "Connect on null device address, ignore"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1867
    .end local v9           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v10           #deviceAddress:Ljava/lang/String;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1868
    .restart local v9       #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v10, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 1869
    .restart local v10       #deviceAddress:Ljava/lang/String;
    if-eqz v10, :cond_b

    .line 1870
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;
    invoke-static {v0, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8902(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1871
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v19

    const/16 v20, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    .line 1872
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1873
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/net/wifi/p2p/WifiP2pGroup;->removeClient(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 1874
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Removed client "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1875
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService;->access$6400(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v19

    if-nez v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pGroup;->isClientListEmpty()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1876
    const-string v19, "WifiP2pService"

    const-string v20, "Client list empty, remove non-persistent p2p group"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    .line 1886
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->size()I

    move-result v20

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mConnectedDevicesCnt:I
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$11602(Landroid/net/wifi/p2p/WifiP2pService;I)I

    .line 1887
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mConnectedDevicesCnt:I
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService;->access$11600(Landroid/net/wifi/p2p/WifiP2pService;)I

    move-result v19

    if-nez v19, :cond_a

    .line 1888
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const-string v20, "REMOVE_GROUP since all clients left"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1889
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const v20, 0x22010

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    .line 1893
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1894
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ap sta disconnected"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1880
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to remove client "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1881
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1882
    .local v4, c:Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "client "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v21, v0

    iget-object v0, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v22, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v21 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    goto :goto_3

    .line 1891
    .end local v4           #c:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v13           #i$:Ljava/util/Iterator;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->showNotification()V
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    goto/16 :goto_2

    .line 1896
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const-string v20, "Disconnect on null device, ignore"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1900
    .end local v9           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v10           #deviceAddress:Ljava/lang/String;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/net/DhcpInfoInternal;

    .line 1901
    .local v12, dhcpInfo:Landroid/net/DhcpInfoInternal;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    if-eqz v12, :cond_e

    .line 1903
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService;->access$12300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/DhcpInfoInternal;

    move-result-object v19

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService;->access$12300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/DhcpInfoInternal;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v12, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_d

    .line 1904
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    invoke-static {v0, v12}, Landroid/net/wifi/p2p/WifiP2pService;->access$12302(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/DhcpInfoInternal;)Landroid/net/DhcpInfoInternal;

    .line 1905
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8902(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1906
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    .line 1907
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1908
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    iget-object v0, v12, Landroid/net/DhcpInfoInternal;->serverAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setWifiP2pInfoOnGroupFormation(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1909
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mConnectedDevicesCnt:I
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$11602(Landroid/net/wifi/p2p/WifiP2pService;I)I

    .line 1910
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->showNotification()V
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1911
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pConnectionChangedBroadcast()V
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1913
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/net/wifi/WifiNative;->setP2pPowerSave(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    .line 1920
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const-string v20, "ignore dhcp renew"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1923
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const-string v20, "DHCP failed"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1924
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 1928
    .end local v12           #dhcpInfo:Landroid/net/DhcpInfoInternal;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " remove group"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1929
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 1930
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const v20, 0x22012

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1932
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const v20, 0x22011

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v21

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1937
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " group removed"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1938
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v11

    .line 1939
    .local v11, devices:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    const/4 v6, 0x0

    .line 1940
    .local v6, changed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_10
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_12

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1941
    .local v8, d:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-interface {v11, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/net/wifi/p2p/WifiP2pDevice;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 1942
    :cond_11
    const/16 v19, 0x3

    move/from16 v0, v19

    iput v0, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 1943
    const/4 v6, 0x1

    goto :goto_4

    .line 1947
    .end local v8           #d:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v19

    if-eqz v19, :cond_15

    .line 1948
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->stopDhcpServer()V
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$12400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1967
    :cond_13
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1602(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1968
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiNative;->p2pFlush()Z

    .line 1969
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$8102(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    .line 1970
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mConnectedDevicesCnt:I
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$11602(Landroid/net/wifi/p2p/WifiP2pService;I)I

    .line 1971
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11802(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfigList;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    .line 1972
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11902(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)I

    .line 1973
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->stopLegacyWifiScan(Z)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)V

    .line 1974
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mIsGotoJoinState:Z
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11202(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)Z

    .line 1977
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v19

    const-string v20, "static_ip"

    const-string v21, "192.168.49.10"

    invoke-virtual/range {v19 .. v21}, Landroid/net/wifi/WifiNative;->p2pSet(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1978
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pStaticIpConfig:Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;->candidateStaticIp:I

    .line 1980
    if-eqz v6, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1981
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mInactiveState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    move-result-object v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$12500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1950
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pStaticIpConfig:Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;

    move-result-object v19

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;->isStaticIp:Z

    move/from16 v19, v0

    if-eqz v19, :cond_16

    .line 1952
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const-string v20, "initialize P2pStaticIpConfig"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1953
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pStaticIpConfig:Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;->isStaticIp:Z

    goto/16 :goto_5

    .line 1955
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const-string v20, "stop DHCP client"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1956
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService;->access$10700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/DhcpStateMachine;

    move-result-object v19

    if-eqz v19, :cond_17

    .line 1957
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService;->access$10700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/DhcpStateMachine;

    move-result-object v19

    const v20, 0x30002

    invoke-virtual/range {v19 .. v20}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 1958
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService;->access$10700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/DhcpStateMachine;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/DhcpStateMachine;->quit()V

    .line 1959
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$10702(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;

    .line 1961
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService;->access$12300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/DhcpInfoInternal;

    move-result-object v19

    if-eqz v19, :cond_13

    .line 1962
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService;->access$12302(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/DhcpInfoInternal;)Landroid/net/DhcpInfoInternal;

    goto/16 :goto_5

    .line 1984
    .end local v6           #changed:Z
    .end local v11           #devices:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    .end local v13           #i$:Ljava/util/Iterator;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1986
    .restart local v9       #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/net/wifi/p2p/WifiP2pGroup;->contains(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v19

    if-eqz v19, :cond_18

    .line 1987
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Lost "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v21, v0

    iget-object v0, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v22, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v21 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " , do nothing"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 1988
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 1991
    :cond_18
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1993
    .end local v9           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const v20, 0x22010

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    .line 1994
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$12600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1997
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const v20, 0x22010

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    .line 1998
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$12700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 2001
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-result-object v19

    if-eqz v19, :cond_1a

    .line 2002
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pConfigList;->getConfigIndex(I)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v7

    .line 2003
    .local v7, config:Landroid/net/wifi/p2p/WifiP2pConfig;
    if-eqz v7, :cond_19

    .line 2004
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Inviting device : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v21, v0

    iget-object v0, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    move-object/from16 v22, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v21 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 2005
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v20

    iget-object v0, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/net/wifi/WifiNative;->p2pInvite(Landroid/net/wifi/p2p/WifiP2pGroup;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_19

    .line 2006
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v19

    iget-object v0, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    .line 2007
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 2008
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    iget-object v0, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectedP2pGroupAddress:Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7902(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 2011
    :cond_19
    if-nez v7, :cond_1

    .line 2012
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->stopLegacyWifiScan(Z)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)V

    goto/16 :goto_1

    .line 2015
    .end local v7           #config:Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_1a
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 2016
    .restart local v7       #config:Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v0, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedProvDiscDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$12000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v19

    if-eqz v19, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedProvDiscDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$12000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_21

    .line 2020
    :cond_1b
    iget-object v0, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    move/from16 v19, v0

    if-nez v19, :cond_1e

    .line 2021
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/net/wifi/WifiNative;->startWpsPbc(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2040
    :cond_1c
    :goto_6
    iget-object v0, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1d

    .line 2041
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v19

    iget-object v0, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    .line 2042
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 2044
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const v20, 0x22009

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 2023
    :cond_1e
    iget-object v0, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_20

    .line 2024
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/WifiNative;->startWpsPinDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2026
    .local v16, pin:Ljava/lang/String;
    :try_start_0
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2027
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendShowPinReqToFrontApp(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_1c

    .line 2028
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    iget-object v0, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1f

    iget-object v0, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    :goto_7
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->notifyInvitationSent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2032
    :catch_0
    move-exception v19

    goto/16 :goto_6

    .line 2028
    :cond_1f
    const-string v19, "any"
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 2036
    .end local v16           #pin:Ljava/lang/String;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v20

    iget-object v0, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/net/wifi/WifiNative;->startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_6

    .line 2046
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Inviting device : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v21, v0

    iget-object v0, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    move-object/from16 v22, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v21 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 2047
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v20

    iget-object v0, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/net/wifi/WifiNative;->p2pInvite(Landroid/net/wifi/p2p/WifiP2pGroup;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_22

    .line 2048
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v19

    iget-object v0, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    .line 2049
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 2050
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    iget-object v0, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectedP2pGroupAddress:Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7902(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 2051
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const v20, 0x22009

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 2053
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const v20, 0x22008

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v21

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 2061
    .end local v7           #config:Landroid/net/wifi/p2p/WifiP2pConfig;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11802(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfigList;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    .line 2062
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11902(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)I

    .line 2063
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pConfigList;->getConfigList()Ljava/util/Collection;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_23

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 2064
    .local v5, cc:Landroid/net/wifi/p2p/WifiP2pConfig;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "device :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v21, v0

    iget-object v0, v5, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    move-object/from16 v22, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v21 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    goto :goto_8

    .line 2066
    .end local v5           #cc:Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const v20, 0x22009

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    .line 2067
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pConfigList;->getConfigIndex(I)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v19

    if-nez v19, :cond_24

    .line 2068
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11802(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfigList;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    .line 2069
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11902(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)I

    .line 2070
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->stopLegacyWifiScan(Z)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)V

    goto/16 :goto_1

    .line 2072
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x23033

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)I

    move-result v22

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v20

    const-wide/16 v21, 0x7530

    invoke-virtual/range {v19 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 2074
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const v20, 0x22007

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    .line 2075
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->stopLegacyWifiScan(Z)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)V

    goto/16 :goto_1

    .line 2081
    .end local v13           #i$:Ljava/util/Iterator;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mConnectedDevicesCnt:I
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService;->access$11600(Landroid/net/wifi/p2p/WifiP2pService;)I

    move-result v19

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_25

    .line 2082
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->showConnectionLimitDialog()V
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$12800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    goto/16 :goto_1

    .line 2084
    :cond_25
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    .line 2085
    .local v17, provDisc:Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v20, v0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedProvDiscDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$12002(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2086
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    new-instance v20, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6502(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 2087
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v19

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 2089
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pStaticIpConfig:Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;

    move-result-object v19

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->candidateStaticIp:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;->candidateStaticIp:I

    .line 2091
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    const v20, 0x24023

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_28

    .line 2092
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 2100
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectedP2pGroupAddress:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectedP2pGroupAddress:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_27

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mRequestNfcCalled:Z
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$12900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Z

    move-result v19

    if-eqz v19, :cond_2a

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    const v20, 0x24021

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2a

    .line 2102
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mRequestNfcCalled:Z
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$12902(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)Z

    .line 2103
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->notifyInvitationReceivedForceAccept()V
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$13000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    goto/16 :goto_1

    .line 2093
    :cond_28
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    const v20, 0x24024

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_29

    .line 2094
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 2095
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->pin:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    goto/16 :goto_9

    .line 2097
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto/16 :goto_9

    .line 2105
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedProvDiscDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$12000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v21, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v21

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendConnectNoticeToApp(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    invoke-static/range {v19 .. v21}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 2106
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mIsGotoJoinState:Z
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11202(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)Z

    .line 2107
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingJoinState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$13100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;

    move-result-object v20

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$13200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 2113
    .end local v17           #provDisc:Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;
    :sswitch_f
    const-string v19, "WifiP2pService"

    const-string v20, "Duplicate group creation event notice, ignore"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2116
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mRequestNfcCalled:Z
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$12902(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)Z

    .line 2117
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const v20, 0x23032

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->removeMessages(I)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$13300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)V

    .line 2118
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const v20, 0x23032

    const-wide/16 v21, 0x4e20

    invoke-virtual/range {v19 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_1

    .line 2121
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const-string v20, "Nfc join wait time expired"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 2122
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mRequestNfcCalled:Z
    invoke-static/range {v19 .. v20}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$12902(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)Z

    goto/16 :goto_1

    .line 1770
    nop

    :sswitch_data_0
    .sparse-switch
        0x20084 -> :sswitch_a
        0x22007 -> :sswitch_c
        0x22010 -> :sswitch_7
        0x22068 -> :sswitch_b
        0x2206b -> :sswitch_2
        0x2206e -> :sswitch_d
        0x22070 -> :sswitch_10
        0x23032 -> :sswitch_11
        0x23033 -> :sswitch_3
        0x24016 -> :sswitch_9
        0x2401d -> :sswitch_f
        0x2401e -> :sswitch_8
        0x24021 -> :sswitch_e
        0x24023 -> :sswitch_e
        0x24024 -> :sswitch_e
        0x24027 -> :sswitch_0
        0x24028 -> :sswitch_1
        0x24029 -> :sswitch_5
        0x2402a -> :sswitch_4
        0x30005 -> :sswitch_6
    .end sparse-switch
.end method
