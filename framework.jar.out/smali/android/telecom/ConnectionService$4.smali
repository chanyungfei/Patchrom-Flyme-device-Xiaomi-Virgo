.class Landroid/telecom/ConnectionService$4;
.super Landroid/telecom/Connection$Listener;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/ConnectionService;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 496
    iput-object p1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-direct {p0}, Landroid/telecom/Connection$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddressChanged(Landroid/telecom/Connection;Landroid/net/Uri;I)V
    .locals 2
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "presentation"    # I

    .prologue
    .line 539
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 540
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Landroid/telecom/ConnectionServiceAdapter;->setAddress(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 538
    return-void
.end method

.method public onAudioModeIsVoipChanged(Landroid/telecom/Connection;Z)V
    .locals 2
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "isVoip"    # Z

    .prologue
    .line 594
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 595
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setIsVoipAudioMode(Ljava/lang/String;Z)V

    .line 593
    return-void
.end method

.method public onCallerDisplayNameChanged(Landroid/telecom/Connection;Ljava/lang/String;I)V
    .locals 2
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "callerDisplayName"    # Ljava/lang/String;
    .param p3, "presentation"    # I

    .prologue
    .line 546
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 547
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Landroid/telecom/ConnectionServiceAdapter;->setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V

    .line 545
    return-void
.end method

.method public onCdmaConnectionTimeReset(Landroid/telecom/Connection;)V
    .locals 2
    .param p1, "c"    # Landroid/telecom/Connection;

    .prologue
    .line 642
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 643
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->resetCdmaConnectionTime(Ljava/lang/String;)V

    .line 641
    return-void
.end method

.method public onConferenceChanged(Landroid/telecom/Connection;Landroid/telecom/Conference;)V
    .locals 3
    .param p1, "connection"    # Landroid/telecom/Connection;
    .param p2, "conference"    # Landroid/telecom/Conference;

    .prologue
    .line 614
    iget-object v2, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2}, Landroid/telecom/ConnectionService;->-get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 615
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 616
    const/4 v0, 0x0

    .line 617
    .local v0, "conferenceId":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 618
    iget-object v2, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2}, Landroid/telecom/ConnectionService;->-get3(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "conferenceId":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 620
    :cond_0
    iget-object v2, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :cond_1
    return-void
.end method

.method public onConferenceMergeFailed(Landroid/telecom/Connection;)V
    .locals 2
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 626
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 627
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 628
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->onConferenceMergeFailed(Ljava/lang/String;)V

    .line 625
    :cond_0
    return-void
.end method

.method public onConferenceablesChanged(Landroid/telecom/Connection;Ljava/util/List;)V
    .locals 3
    .param p1, "connection"    # Landroid/telecom/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Conferenceable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 607
    .local p2, "conferenceables":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Conferenceable;>;"
    iget-object v0, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v1

    .line 608
    iget-object v0, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 609
    iget-object v2, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2, p2}, Landroid/telecom/ConnectionService;->-wrap1(Landroid/telecom/ConnectionService;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 607
    invoke-virtual {v1, v0, v2}, Landroid/telecom/ConnectionServiceAdapter;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V

    .line 606
    return-void
.end method

.method public onConnectionCapabilitiesChanged(Landroid/telecom/Connection;I)V
    .locals 5
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "capabilities"    # I

    .prologue
    .line 578
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 579
    .local v0, "id":Ljava/lang/String;
    const-string/jumbo v1, "capabilities: parcelableconnection: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 580
    invoke-static {p2}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 579
    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 581
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setConnectionCapabilities(Ljava/lang/String;I)V

    .line 577
    return-void
.end method

.method public onDestroyed(Landroid/telecom/Connection;)V
    .locals 1
    .param p1, "c"    # Landroid/telecom/Connection;

    .prologue
    .line 552
    iget-object v0, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-virtual {v0, p1}, Landroid/telecom/ConnectionService;->removeConnection(Landroid/telecom/Connection;)V

    .line 551
    return-void
.end method

.method public onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V
    .locals 4
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 525
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 526
    .local v0, "id":Ljava/lang/String;
    const-string/jumbo v1, "Adapter set disconnected %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 527
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V

    .line 524
    return-void
.end method

.method public onExtrasChanged(Landroid/telecom/Connection;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "connection"    # Landroid/telecom/Connection;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 634
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 635
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 636
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 633
    :cond_0
    return-void
.end method

.method public onPostDialChar(Landroid/telecom/Connection;C)V
    .locals 5
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "nextChar"    # C

    .prologue
    .line 564
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 565
    .local v0, "id":Ljava/lang/String;
    const-string/jumbo v1, "Adapter onPostDialChar %s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 566
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->onPostDialChar(Ljava/lang/String;C)V

    .line 563
    return-void
.end method

.method public onPostDialWait(Landroid/telecom/Connection;Ljava/lang/String;)V
    .locals 4
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "remaining"    # Ljava/lang/String;

    .prologue
    .line 557
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 558
    .local v0, "id":Ljava/lang/String;
    const-string/jumbo v1, "Adapter onPostDialWait %s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 559
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->onPostDialWait(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    return-void
.end method

.method public onRingbackRequested(Landroid/telecom/Connection;Z)V
    .locals 5
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "ringback"    # Z

    .prologue
    .line 571
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 572
    .local v0, "id":Ljava/lang/String;
    const-string/jumbo v1, "Adapter onRingback %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 573
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setRingbackRequested(Ljava/lang/String;Z)V

    .line 570
    return-void
.end method

.method public onStateChanged(Landroid/telecom/Connection;I)V
    .locals 5
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "state"    # I

    .prologue
    .line 499
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 500
    .local v0, "id":Ljava/lang/String;
    const-string/jumbo v1, "Adapter set state %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p2}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 501
    packed-switch p2, :pswitch_data_0

    .line 498
    :goto_0
    :pswitch_0
    return-void

    .line 503
    :pswitch_1
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->setActive(Ljava/lang/String;)V

    goto :goto_0

    .line 506
    :pswitch_2
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->setDialing(Ljava/lang/String;)V

    goto :goto_0

    .line 512
    :pswitch_3
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->setOnHold(Ljava/lang/String;)V

    goto :goto_0

    .line 518
    :pswitch_4
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->setRinging(Ljava/lang/String;)V

    goto :goto_0

    .line 501
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onStatusHintsChanged(Landroid/telecom/Connection;Landroid/telecom/StatusHints;)V
    .locals 2
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "statusHints"    # Landroid/telecom/StatusHints;

    .prologue
    .line 600
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 601
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V

    .line 599
    return-void
.end method

.method public onVideoProviderChanged(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V
    .locals 4
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .prologue
    .line 586
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 587
    .local v0, "id":Ljava/lang/String;
    const-string/jumbo v1, "onVideoProviderChanged: Connection: %s, VideoProvider: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 588
    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 587
    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 589
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Landroid/telecom/Connection$VideoProvider;)V

    .line 585
    return-void
.end method

.method public onVideoStateChanged(Landroid/telecom/Connection;I)V
    .locals 5
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "videoState"    # I

    .prologue
    .line 532
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 533
    .local v0, "id":Ljava/lang/String;
    const-string/jumbo v1, "Adapter set video state %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 534
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setVideoState(Ljava/lang/String;I)V

    .line 531
    return-void
.end method