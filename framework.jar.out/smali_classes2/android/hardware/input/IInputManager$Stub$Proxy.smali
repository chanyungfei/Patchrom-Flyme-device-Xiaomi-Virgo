.class Landroid/hardware/input/IInputManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IInputManager.java"

# interfaces
.implements Landroid/hardware/input/IInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IInputManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 346
    return-void
.end method


# virtual methods
.method public addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 5
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 634
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 635
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 637
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 638
    if-eqz p1, :cond_0

    .line 639
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 640
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/hardware/input/InputDeviceIdentifier;->writeToParcel(Landroid/os/Parcel;I)V

    .line 645
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 646
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 647
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 653
    return-void

    .line 643
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 650
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public cancelVibrate(ILandroid/os/IBinder;)V
    .locals 5
    .param p1, "deviceId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 715
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 716
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 718
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 720
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 721
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 722
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 728
    return-void

    .line 725
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .locals 6
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 565
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 568
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 569
    if-eqz p1, :cond_0

    .line 570
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/hardware/input/InputDeviceIdentifier;->writeToParcel(Landroid/os/Parcel;I)V

    .line 576
    :goto_0
    iget-object v3, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 577
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 578
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 581
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 584
    return-object v2

    .line 574
    .end local v2    # "_result":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 581
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .locals 6
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 360
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 363
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    iget-object v3, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 366
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 367
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 368
    sget-object v3, Landroid/view/InputDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    .local v2, "_result":Landroid/view/InputDevice;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 378
    return-object v2

    .line 371
    .end local v2    # "_result":Landroid/view/InputDevice;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/view/InputDevice;
    goto :goto_0

    .line 375
    .end local v2    # "_result":Landroid/view/InputDevice;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getInputDeviceIds()[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 383
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 386
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 387
    iget-object v3, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 388
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 389
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 392
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 395
    return-object v2

    .line 392
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    const-string v0, "android.hardware.input.IInputManager"

    return-object v0
.end method

.method public getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .locals 6
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 541
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 542
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 545
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 547
    iget-object v3, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 548
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 549
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 550
    sget-object v3, Landroid/hardware/input/KeyboardLayout;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/KeyboardLayout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    .local v2, "_result":Landroid/hardware/input/KeyboardLayout;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 560
    return-object v2

    .line 553
    .end local v2    # "_result":Landroid/hardware/input/KeyboardLayout;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/hardware/input/KeyboardLayout;
    goto :goto_0

    .line 557
    .end local v2    # "_result":Landroid/hardware/input/KeyboardLayout;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 524
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 525
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 528
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 529
    iget-object v3, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 530
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 531
    sget-object v3, Landroid/hardware/input/KeyboardLayout;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/input/KeyboardLayout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    .local v2, "_result":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 537
    return-object v2

    .line 534
    .end local v2    # "_result":[Landroid/hardware/input/KeyboardLayout;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .locals 6
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 611
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 614
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 615
    if-eqz p1, :cond_0

    .line 616
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 617
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/hardware/input/InputDeviceIdentifier;->writeToParcel(Landroid/os/Parcel;I)V

    .line 622
    :goto_0
    iget-object v3, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 623
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 624
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 627
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 630
    return-object v2

    .line 620
    .end local v2    # "_result":[Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 627
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .locals 6
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "rotation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 475
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 476
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 479
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 481
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    iget-object v3, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 483
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 484
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 485
    sget-object v3, Landroid/hardware/input/TouchCalibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/TouchCalibration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    .local v2, "_result":Landroid/hardware/input/TouchCalibration;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 493
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 495
    return-object v2

    .line 488
    .end local v2    # "_result":Landroid/hardware/input/TouchCalibration;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/hardware/input/TouchCalibration;
    goto :goto_0

    .line 492
    .end local v2    # "_result":Landroid/hardware/input/TouchCalibration;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 493
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public hasKeys(II[I[Z)Z
    .locals 6
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "keyExists"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 402
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 405
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 409
    if-nez p4, :cond_1

    .line 410
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    :goto_0
    iget-object v3, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 416
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 417
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 418
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->readBooleanArray([Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 424
    return v2

    .line 413
    .end local v2    # "_result":Z
    :cond_1
    :try_start_1
    array-length v3, p4

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 421
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 448
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 449
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 452
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 453
    if-eqz p1, :cond_0

    .line 454
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/view/InputEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 460
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    iget-object v4, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 462
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 463
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 466
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 469
    return v2

    .line 458
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 466
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 463
    goto :goto_1
.end method

.method public registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/input/IInputDevicesChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 681
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 683
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 684
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/hardware/input/IInputDevicesChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 685
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 686
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 692
    return-void

    .line 684
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 689
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 5
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 656
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 657
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 659
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 660
    if-eqz p1, :cond_0

    .line 661
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/hardware/input/InputDeviceIdentifier;->writeToParcel(Landroid/os/Parcel;I)V

    .line 667
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 668
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 669
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 673
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 675
    return-void

    .line 665
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 672
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 673
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 5
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 588
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 589
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 591
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 592
    if-eqz p1, :cond_0

    .line 593
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/hardware/input/InputDeviceIdentifier;->writeToParcel(Landroid/os/Parcel;I)V

    .line 599
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 600
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 601
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 607
    return-void

    .line 597
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 604
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setCustomHoverIcon(Landroid/graphics/Bitmap;II)V
    .locals 5
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "hotSpotX"    # I
    .param p3, "hotSpotY"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 780
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 781
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 783
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 784
    if-eqz p1, :cond_0

    .line 785
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 786
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 791
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 792
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 793
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 794
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 797
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 798
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 800
    return-void

    .line 789
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 797
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 798
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    .locals 5
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "rotation"    # I
    .param p3, "calibration"    # Landroid/hardware/input/TouchCalibration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 499
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 500
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 502
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    if-eqz p3, :cond_0

    .line 506
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/hardware/input/TouchCalibration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 512
    :goto_0
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 513
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 519
    return-void

    .line 510
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 516
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public switchTouchSensitiveMode(Z)V
    .locals 5
    .param p1, "modeOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 733
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 734
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 736
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 737
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 738
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 739
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 745
    return-void

    .line 742
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public switchTouchStylusMode(Z)V
    .locals 5
    .param p1, "modeOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 748
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 749
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 751
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 752
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 753
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 754
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 757
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 760
    return-void

    .line 757
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public switchTouchWakeupMode(Z)V
    .locals 5
    .param p1, "modeOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 763
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 764
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 766
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 767
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 769
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 772
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 775
    return-void

    .line 772
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public tryPointerSpeed(I)V
    .locals 5
    .param p1, "speed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 431
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 433
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 436
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 442
    return-void

    .line 439
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public vibrate(I[JILandroid/os/IBinder;)V
    .locals 5
    .param p1, "deviceId"    # I
    .param p2, "pattern"    # [J
    .param p3, "repeat"    # I
    .param p4, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 697
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 698
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 700
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 701
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 702
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 703
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 705
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 706
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 712
    return-void

    .line 709
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
