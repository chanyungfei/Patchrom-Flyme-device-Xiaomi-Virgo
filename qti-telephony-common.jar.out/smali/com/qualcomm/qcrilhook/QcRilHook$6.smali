.class Lcom/qualcomm/qcrilhook/QcRilHook$6;
.super Ljava/lang/Object;
.source "QcRilHook.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/QcRilHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qcrilhook/QcRilHook;


# direct methods
.method constructor <init>(Lcom/qualcomm/qcrilhook/QcRilHook;)V
    .locals 0

    .prologue
    .line 1614
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QcRilHook$6;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$6;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {p2}, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    move-result-object v1

    # setter for: Lcom/qualcomm/qcrilhook/QcRilHook;->mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;
    invoke-static {v0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->access$102(Lcom/qualcomm/qcrilhook/QcRilHook;Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    .line 1618
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$6;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    # getter for: Lcom/qualcomm/qcrilhook/QcRilHook;->mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->access$100(Lcom/qualcomm/qcrilhook/QcRilHook;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1619
    const-string v0, "QC_RIL_OEM_HOOK"

    const-string v1, "QcrilMsgTunnelService Connect Failed (onServiceConnected)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$6;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    const/4 v1, 0x1

    # setter for: Lcom/qualcomm/qcrilhook/QcRilHook;->mBound:Z
    invoke-static {v0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->access$202(Lcom/qualcomm/qcrilhook/QcRilHook;Z)Z

    .line 1624
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$6;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    # getter for: Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->access$300(Lcom/qualcomm/qcrilhook/QcRilHook;)Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1625
    const-string v0, "QC_RIL_OEM_HOOK"

    const-string v1, "Calling onQcRilHookReady callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$6;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    # getter for: Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->access$300(Lcom/qualcomm/qcrilhook/QcRilHook;)Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/qcrilhook/QcRilHookCallback;->onQcRilHookReady()V

    .line 1628
    :cond_0
    return-void

    .line 1621
    :cond_1
    const-string v0, "QC_RIL_OEM_HOOK"

    const-string v1, "QcrilMsgTunnelService Connected Successfully (onServiceConnected)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1632
    const-string v0, "QC_RIL_OEM_HOOK"

    const-string v1, "The connection to the service got disconnected unexpectedly!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$6;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    const/4 v1, 0x0

    # setter for: Lcom/qualcomm/qcrilhook/QcRilHook;->mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;
    invoke-static {v0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->access$102(Lcom/qualcomm/qcrilhook/QcRilHook;Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    .line 1634
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$6;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    const/4 v1, 0x0

    # setter for: Lcom/qualcomm/qcrilhook/QcRilHook;->mBound:Z
    invoke-static {v0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->access$202(Lcom/qualcomm/qcrilhook/QcRilHook;Z)Z

    .line 1635
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$6;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    # getter for: Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->access$300(Lcom/qualcomm/qcrilhook/QcRilHook;)Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1636
    const-string v0, "QC_RIL_OEM_HOOK"

    const-string v1, "Calling onQcRilHookDisconnected callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$6;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    # getter for: Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->access$300(Lcom/qualcomm/qcrilhook/QcRilHook;)Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/qcrilhook/QcRilHookCallback;->onQcRilHookDisconnected()V

    .line 1639
    :cond_0
    return-void
.end method
