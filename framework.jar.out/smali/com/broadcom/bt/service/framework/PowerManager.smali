.class public Lcom/broadcom/bt/service/framework/PowerManager;
.super Ljava/lang/Object;
.source "PowerManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BTFMPowerManager"

.field private static mProxy:Lcom/broadcom/bt/service/framework/PowerManager;


# instance fields
.field private final mService:Lcom/broadcom/bt/service/framework/IPowerManager;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/framework/IPowerManager;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "service is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iput-object p1, p0, Lcom/broadcom/bt/service/framework/PowerManager;->mService:Lcom/broadcom/bt/service/framework/IPowerManager;

    .line 61
    return-void
.end method

.method public static declared-synchronized getProxy()Lcom/broadcom/bt/service/framework/PowerManager;
    .locals 4

    .prologue
    .line 46
    const-class v3, Lcom/broadcom/bt/service/framework/PowerManager;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/broadcom/bt/service/framework/PowerManager;->mProxy:Lcom/broadcom/bt/service/framework/PowerManager;

    if-nez v2, :cond_0

    .line 47
    const-string v2, "bt_fm_radio"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 48
    .local v0, b:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 49
    invoke-static {v0}, Lcom/broadcom/bt/service/framework/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/framework/IPowerManager;

    move-result-object v1

    .line 50
    .local v1, service:Lcom/broadcom/bt/service/framework/IPowerManager;
    new-instance v2, Lcom/broadcom/bt/service/framework/PowerManager;

    invoke-direct {v2, v1}, Lcom/broadcom/bt/service/framework/PowerManager;-><init>(Lcom/broadcom/bt/service/framework/IPowerManager;)V

    sput-object v2, Lcom/broadcom/bt/service/framework/PowerManager;->mProxy:Lcom/broadcom/bt/service/framework/PowerManager;

    .line 53
    .end local v1           #service:Lcom/broadcom/bt/service/framework/IPowerManager;
    :cond_0
    sget-object v2, Lcom/broadcom/bt/service/framework/PowerManager;->mProxy:Lcom/broadcom/bt/service/framework/PowerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    .line 46
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public disableBt()Z
    .locals 3

    .prologue
    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/PowerManager;->mService:Lcom/broadcom/bt/service/framework/IPowerManager;

    invoke-interface {v1}, Lcom/broadcom/bt/service/framework/IPowerManager;->disableFm()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 96
    :goto_0
    return v1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BTFMPowerManager"

    const-string v2, "Unable to disable FM"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableFm()Z
    .locals 3

    .prologue
    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/PowerManager;->mService:Lcom/broadcom/bt/service/framework/IPowerManager;

    invoke-interface {v1}, Lcom/broadcom/bt/service/framework/IPowerManager;->disableFm()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 78
    :goto_0
    return v1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BTFMPowerManager"

    const-string v2, "Unable to enable FM"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableBt()Z
    .locals 3

    .prologue
    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/PowerManager;->mService:Lcom/broadcom/bt/service/framework/IPowerManager;

    invoke-interface {v1}, Lcom/broadcom/bt/service/framework/IPowerManager;->enableBt()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 87
    :goto_0
    return v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BTFMPowerManager"

    const-string v2, "Unable to enable FM"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableFm()Z
    .locals 3

    .prologue
    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/PowerManager;->mService:Lcom/broadcom/bt/service/framework/IPowerManager;

    invoke-interface {v1}, Lcom/broadcom/bt/service/framework/IPowerManager;->enableFm()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 69
    :goto_0
    return v1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BTFMPowerManager"

    const-string v2, "Unable to enable FM"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBtEnabled()Z
    .locals 3

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/PowerManager;->mService:Lcom/broadcom/bt/service/framework/IPowerManager;

    invoke-interface {v1}, Lcom/broadcom/bt/service/framework/IPowerManager;->isBtEnabled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 105
    :goto_0
    return v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BTFMPowerManager"

    const-string v2, "Unable to disable FM"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isfmEnabled()Z
    .locals 3

    .prologue
    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/PowerManager;->mService:Lcom/broadcom/bt/service/framework/IPowerManager;

    invoke-interface {v1}, Lcom/broadcom/bt/service/framework/IPowerManager;->isfmEnabled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 114
    :goto_0
    return v1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BTFMPowerManager"

    const-string v2, "Unable to disable FM"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    const/4 v1, 0x0

    goto :goto_0
.end method
