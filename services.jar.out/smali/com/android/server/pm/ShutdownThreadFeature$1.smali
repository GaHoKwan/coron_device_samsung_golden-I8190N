.class Lcom/android/server/pm/ShutdownThreadFeature$1;
.super Ljava/lang/Thread;
.source "ShutdownThreadFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/ShutdownThreadFeature;->shutdownRadios(ILandroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShutdownThreadFeature;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShutdownThreadFeature;Landroid/net/wifi/WifiManager;J[Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    iput-object p2, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    iput-wide p3, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$endTime:J

    iput-object p5, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 102
    const/16 v0, 0x1f4

    .line 105
    .local v0, PHONE_STATE_POLL_SLEEP_MSEC:I
    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->nfc:Landroid/nfc/INfcAdapter;
    invoke-static {v8}, Lcom/android/server/pm/ShutdownThreadFeature;->access$100(Lcom/android/server/pm/ShutdownThreadFeature;)Landroid/nfc/INfcAdapter;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->nfc:Landroid/nfc/INfcAdapter;
    invoke-static {v8}, Lcom/android/server/pm/ShutdownThreadFeature;->access$100(Lcom/android/server/pm/ShutdownThreadFeature;)Landroid/nfc/INfcAdapter;

    move-result-object v8

    invoke-interface {v8}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_f

    :cond_0
    const/4 v8, 0x1

    :goto_0
    invoke-static {v8}, Lcom/android/server/pm/ShutdownThreadFeature;->access$002(Z)Z

    .line 107
    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$000()Z

    move-result v8

    if-nez v8, :cond_1

    .line 108
    const-string v8, "ShutdownThread"

    const-string v9, "Turning off NFC..."

    invoke-static {v8, v9}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v8, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->nfc:Landroid/nfc/INfcAdapter;
    invoke-static {v8}, Lcom/android/server/pm/ShutdownThreadFeature;->access$100(Lcom/android/server/pm/ShutdownThreadFeature;)Landroid/nfc/INfcAdapter;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_1
    :goto_1
    :try_start_1
    iget-object v8, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->bluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v8}, Lcom/android/server/pm/ShutdownThreadFeature;->access$300(Lcom/android/server/pm/ShutdownThreadFeature;)Landroid/bluetooth/IBluetooth;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->bluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v8}, Lcom/android/server/pm/ShutdownThreadFeature;->access$300(Lcom/android/server/pm/ShutdownThreadFeature;)Landroid/bluetooth/IBluetooth;

    move-result-object v8

    invoke-interface {v8}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_10

    :cond_2
    const/4 v8, 0x1

    :goto_2
    invoke-static {v8}, Lcom/android/server/pm/ShutdownThreadFeature;->access$202(Z)Z

    .line 119
    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$200()Z

    move-result v8

    if-nez v8, :cond_3

    .line 120
    const-string v8, "ShutdownThread"

    const-string v9, "Disabling Bluetooth..."

    invoke-static {v8, v9}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v8, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->bluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v8}, Lcom/android/server/pm/ShutdownThreadFeature;->access$300(Lcom/android/server/pm/ShutdownThreadFeature;)Landroid/bluetooth/IBluetooth;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    :cond_3
    :goto_3
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/server/pm/ShutdownThreadFeature;->access$402(Z)Z

    .line 130
    const/4 v7, 0x1

    .line 132
    .local v7, useFallback:Z
    const/4 v5, 0x0

    .line 133
    .local v5, steModemShutdown:Ljava/lang/Object;
    new-instance v6, Lcom/android/server/pm/SteModemShutdownSync;

    invoke-direct {v6}, Lcom/android/server/pm/SteModemShutdownSync;-><init>()V

    .line 135
    .local v6, steShutdownSync:Lcom/android/server/pm/SteModemShutdownSync;
    :try_start_2
    const-class v8, Lcom/android/server/pm/ShutdownThread;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 136
    .local v2, cl:Ljava/lang/ClassLoader;
    const-string v8, "com.android.server.pm.SteModemShutdown"

    invoke-virtual {v2, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 138
    .local v1, SteModemShutdown:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    iget-object v11, v11, Lcom/android/server/pm/ShutdownThreadFeature;->mContext:Landroid/content/Context;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->mReboot:Z
    invoke-static {v11}, Lcom/android/server/pm/ShutdownThreadFeature;->access$500(Lcom/android/server/pm/ShutdownThreadFeature;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 141
    const-string v8, "startModemShutdown"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Lcom/android/server/pm/SteModemShutdownSync;

    aput-object v11, v9, v10

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-virtual {v8, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 145
    :try_start_3
    iget-boolean v7, v6, Lcom/android/server/pm/SteModemShutdownSync;->useFallback:Z

    .line 146
    iget-boolean v8, v6, Lcom/android/server/pm/SteModemShutdownSync;->isRadioOn:Z

    if-nez v8, :cond_11

    const/4 v8, 0x1

    :goto_4
    invoke-static {v8}, Lcom/android/server/pm/ShutdownThreadFeature;->access$402(Z)Z

    .line 147
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    .end local v1           #SteModemShutdown:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #cl:Ljava/lang/ClassLoader;
    .end local v5           #steModemShutdown:Ljava/lang/Object;
    :goto_5
    if-eqz v7, :cond_5

    .line 154
    :try_start_4
    iget-object v8, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->phone:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v8}, Lcom/android/server/pm/ShutdownThreadFeature;->access$600(Lcom/android/server/pm/ShutdownThreadFeature;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->phone:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v8}, Lcom/android/server/pm/ShutdownThreadFeature;->access$600(Lcom/android/server/pm/ShutdownThreadFeature;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v8

    if-nez v8, :cond_12

    :cond_4
    const/4 v8, 0x1

    :goto_6
    invoke-static {v8}, Lcom/android/server/pm/ShutdownThreadFeature;->access$402(Z)Z

    .line 155
    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$400()Z

    move-result v8

    if-nez v8, :cond_5

    .line 156
    const-string v8, "ShutdownThread"

    const-string v9, "Turning off radio..."

    invoke-static {v8, v9}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v8, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->phone:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v8}, Lcom/android/server/pm/ShutdownThreadFeature;->access$600(Lcom/android/server/pm/ShutdownThreadFeature;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 165
    :cond_5
    :goto_7
    iget-object v8, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_13

    iget-object v8, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v8

    const/16 v9, 0xb

    if-ne v8, v9, :cond_13

    :cond_6
    const/4 v8, 0x1

    :goto_8
    invoke-static {v8}, Lcom/android/server/pm/ShutdownThreadFeature;->access$702(Z)Z

    .line 168
    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$700()Z

    move-result v8

    if-nez v8, :cond_7

    .line 169
    const-string v8, "ShutdownThread"

    const-string v9, "!@Disabling WiFi..."

    invoke-static {v8, v9}, Lcom/android/server/pm/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v8, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->shutdown()Z

    .line 173
    :cond_7
    const-string v8, "ShutdownThread"

    const-string v9, "Waiting for NFC, Bluetooth and Radio..."

    invoke-static {v8, v9}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$endTime:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_e

    .line 176
    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$200()Z

    move-result v8

    if-nez v8, :cond_8

    .line 178
    :try_start_5
    iget-object v8, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->bluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v8}, Lcom/android/server/pm/ShutdownThreadFeature;->access$300(Lcom/android/server/pm/ShutdownThreadFeature;)Landroid/bluetooth/IBluetooth;

    move-result-object v8

    invoke-interface {v8}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_14

    const/4 v8, 0x1

    :goto_a
    invoke-static {v8}, Lcom/android/server/pm/ShutdownThreadFeature;->access$202(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 184
    :goto_b
    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$200()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 185
    const-string v8, "ShutdownThread"

    const-string v9, "!@Bluetooth turned off."

    invoke-static {v8, v9}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_8
    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$400()Z

    move-result v8

    if-nez v8, :cond_9

    .line 189
    monitor-enter v6

    .line 190
    :try_start_6
    iget-boolean v7, v6, Lcom/android/server/pm/SteModemShutdownSync;->useFallback:Z

    .line 191
    iget-boolean v8, v6, Lcom/android/server/pm/SteModemShutdownSync;->isRadioOn:Z

    if-nez v8, :cond_15

    const/4 v8, 0x1

    :goto_c
    invoke-static {v8}, Lcom/android/server/pm/ShutdownThreadFeature;->access$402(Z)Z

    .line 192
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 193
    if-eqz v7, :cond_9

    .line 195
    :try_start_7
    iget-object v8, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->phone:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v8}, Lcom/android/server/pm/ShutdownThreadFeature;->access$600(Lcom/android/server/pm/ShutdownThreadFeature;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v8

    if-nez v8, :cond_16

    const/4 v8, 0x1

    :goto_d
    invoke-static {v8}, Lcom/android/server/pm/ShutdownThreadFeature;->access$402(Z)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    .line 200
    :goto_e
    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$400()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 201
    const-string v8, "ShutdownThread"

    const-string v9, "!@Radio turned off."

    invoke-static {v8, v9}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_9
    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$700()Z

    move-result v8

    if-nez v8, :cond_c

    .line 207
    iget-object v8, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_a

    iget-object v8, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_17

    :cond_a
    iget-object v8, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v8

    const/16 v9, 0xb

    if-eq v8, v9, :cond_b

    iget-object v8, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v8

    const/16 v9, 0xe

    if-ne v8, v9, :cond_17

    :cond_b
    const/4 v8, 0x1

    :goto_f
    invoke-static {v8}, Lcom/android/server/pm/ShutdownThreadFeature;->access$702(Z)Z

    .line 213
    :cond_c
    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$000()Z

    move-result v8

    if-nez v8, :cond_d

    .line 215
    :try_start_8
    iget-object v8, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->this$0:Lcom/android/server/pm/ShutdownThreadFeature;

    #getter for: Lcom/android/server/pm/ShutdownThreadFeature;->nfc:Landroid/nfc/INfcAdapter;
    invoke-static {v8}, Lcom/android/server/pm/ShutdownThreadFeature;->access$100(Lcom/android/server/pm/ShutdownThreadFeature;)Landroid/nfc/INfcAdapter;

    move-result-object v8

    invoke-interface {v8}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_18

    const/4 v8, 0x1

    :goto_10
    invoke-static {v8}, Lcom/android/server/pm/ShutdownThreadFeature;->access$002(Z)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_6

    .line 220
    :goto_11
    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$400()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 221
    const-string v8, "ShutdownThread"

    const-string v9, "!@NFC turned off."

    invoke-static {v8, v9}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_d
    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$400()Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$200()Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$000()Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$700()Z

    move-result v8

    if-eqz v8, :cond_19

    .line 226
    const-string v8, "ShutdownThread"

    const-string v9, "!@NFC, Radio, Bluetooth and WiFi shutdown complete."

    invoke-static {v8, v9}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v8, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$done:[Z

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 246
    :cond_e
    return-void

    .line 105
    .end local v6           #steShutdownSync:Lcom/android/server/pm/SteModemShutdownSync;
    .end local v7           #useFallback:Z
    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 111
    :catch_0
    move-exception v4

    .line 112
    .local v4, ex:Landroid/os/RemoteException;
    const-string v8, "ShutdownThread"

    const-string v9, "RemoteException during NFC shutdown"

    invoke-static {v8, v9, v4}, Lcom/android/server/pm/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 113
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/android/server/pm/ShutdownThreadFeature;->access$002(Z)Z

    goto/16 :goto_1

    .line 117
    .end local v4           #ex:Landroid/os/RemoteException;
    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 123
    :catch_1
    move-exception v4

    .line 124
    .restart local v4       #ex:Landroid/os/RemoteException;
    const-string v8, "ShutdownThread"

    const-string v9, "RemoteException during bluetooth shutdown"

    invoke-static {v8, v9, v4}, Lcom/android/server/pm/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 125
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/android/server/pm/ShutdownThreadFeature;->access$202(Z)Z

    goto/16 :goto_3

    .line 146
    .end local v4           #ex:Landroid/os/RemoteException;
    .restart local v1       #SteModemShutdown:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v2       #cl:Ljava/lang/ClassLoader;
    .restart local v5       #steModemShutdown:Ljava/lang/Object;
    .restart local v6       #steShutdownSync:Lcom/android/server/pm/SteModemShutdownSync;
    .restart local v7       #useFallback:Z
    :cond_11
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 147
    :catchall_0
    move-exception v8

    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v8
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 148
    .end local v1           #SteModemShutdown:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #cl:Ljava/lang/ClassLoader;
    .end local v5           #steModemShutdown:Ljava/lang/Object;
    :catch_2
    move-exception v3

    .line 149
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "ShutdownThread"

    const-string v9, "STE Modem Shutdown not possible.  Using fallback."

    invoke-static {v8, v9}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v8, "ShutdownThread"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 154
    .end local v3           #e:Ljava/lang/Exception;
    :cond_12
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 159
    :catch_3
    move-exception v4

    .line 160
    .restart local v4       #ex:Landroid/os/RemoteException;
    const-string v8, "ShutdownThread"

    const-string v9, "RemoteException during radio shutdown"

    invoke-static {v8, v9, v4}, Lcom/android/server/pm/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 161
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/android/server/pm/ShutdownThreadFeature;->access$402(Z)Z

    goto/16 :goto_7

    .line 165
    .end local v4           #ex:Landroid/os/RemoteException;
    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_8

    .line 178
    :cond_14
    const/4 v8, 0x0

    goto/16 :goto_a

    .line 180
    :catch_4
    move-exception v4

    .line 181
    .restart local v4       #ex:Landroid/os/RemoteException;
    const-string v8, "ShutdownThread"

    const-string v9, "RemoteException during bluetooth shutdown"

    invoke-static {v8, v9, v4}, Lcom/android/server/pm/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 182
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/android/server/pm/ShutdownThreadFeature;->access$202(Z)Z

    goto/16 :goto_b

    .line 191
    .end local v4           #ex:Landroid/os/RemoteException;
    :cond_15
    const/4 v8, 0x0

    goto/16 :goto_c

    .line 192
    :catchall_1
    move-exception v8

    :try_start_b
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v8

    .line 195
    :cond_16
    const/4 v8, 0x0

    goto/16 :goto_d

    .line 196
    :catch_5
    move-exception v4

    .line 197
    .restart local v4       #ex:Landroid/os/RemoteException;
    const-string v8, "ShutdownThread"

    const-string v9, "RemoteException during radio shutdown"

    invoke-static {v8, v9, v4}, Lcom/android/server/pm/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 198
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/android/server/pm/ShutdownThreadFeature;->access$402(Z)Z

    goto/16 :goto_e

    .line 207
    .end local v4           #ex:Landroid/os/RemoteException;
    :cond_17
    const/4 v8, 0x0

    goto/16 :goto_f

    .line 215
    :cond_18
    const/4 v8, 0x0

    goto/16 :goto_10

    .line 216
    :catch_6
    move-exception v4

    .line 217
    .restart local v4       #ex:Landroid/os/RemoteException;
    const-string v8, "ShutdownThread"

    const-string v9, "RemoteException during NFC shutdown"

    invoke-static {v8, v9, v4}, Lcom/android/server/pm/ShutdownThread$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 218
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/android/server/pm/ShutdownThreadFeature;->access$002(Z)Z

    goto/16 :goto_11

    .line 230
    .end local v4           #ex:Landroid/os/RemoteException;
    :cond_19
    const-string v8, "ShutdownThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "!@RadioOff:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$400()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", BluetoothOff:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$200()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", NFC Off:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$000()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", WiFiOff:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$700()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/pm/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v8, "ShutdownThread"

    const-string v9, "!@before SystemClock.sleep(PHONE_STATE_POLL_SLEEP_MSEC)"

    invoke-static {v8, v9}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-wide/16 v8, 0x1f4

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 240
    const-string v8, "ShutdownThread"

    const-string v9, "!@after SystemClock.sleep(PHONE_STATE_POLL_SLEEP_MSEC)"

    invoke-static {v8, v9}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string v8, "ShutdownThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "!@[Phone off retry:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/server/pm/ShutdownThreadFeature$1;->val$endTime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " radioOff="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$400()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bluetoothOff="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$200()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " nfcOff="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/server/pm/ShutdownThreadFeature;->access$000()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/pm/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9
.end method
