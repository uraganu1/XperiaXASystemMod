.class Lcom/sonyericsson/music/IPlayback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPlayback.java"

# interfaces
.implements Lcom/sonyericsson/music/IPlayback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/IPlayback$Stub;
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

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p1, p0, Lcom/sonyericsson/music/IPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 225
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getAlbumArtForPosition(II)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 637
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 638
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback"

    .line 641
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 642
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 643
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 645
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 646
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 654
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 655
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 657
    return-object v0

    .line 647
    :cond_0
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 656
    :catchall_0
    move-exception v0

    .line 654
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 655
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getAlbumId()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 428
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback"

    .line 432
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 434
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 435
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 438
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 439
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 441
    return v0

    .line 440
    :catchall_0
    move-exception v0

    .line 438
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 439
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 451
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 452
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback"

    .line 455
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 457
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 458
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 461
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 462
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 464
    return-object v0

    .line 463
    :catchall_0
    move-exception v0

    .line 461
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 462
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getArtistId()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 474
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback"

    .line 477
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 479
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 480
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 483
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 484
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 486
    return v0

    .line 485
    :catchall_0
    move-exception v0

    .line 483
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 484
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 495
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 496
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback"

    .line 499
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 501
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 502
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 505
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 506
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 508
    return-object v0

    .line 507
    :catchall_0
    move-exception v0

    .line 505
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 506
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getDuration()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback"

    .line 343
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 345
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 346
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 349
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 352
    return-wide v4

    .line 351
    :catchall_0
    move-exception v0

    .line 349
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback"

    .line 232
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 518
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 519
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback"

    .line 522
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 524
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 525
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 528
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 529
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 531
    return-object v0

    .line 530
    :catchall_0
    move-exception v0

    .line 528
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 529
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getPluginIcon()Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 608
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 609
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback"

    .line 612
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 614
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 615
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 623
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 624
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 626
    return-object v0

    .line 616
    :cond_0
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 625
    :catchall_0
    move-exception v0

    .line 623
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 624
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getPosition()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 362
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback"

    .line 366
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 368
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 369
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 372
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 373
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 375
    return-wide v4

    .line 374
    :catchall_0
    move-exception v0

    .line 372
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 373
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getQueuePosition()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 541
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 542
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback"

    .line 545
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 547
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 548
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 551
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 552
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 554
    return v0

    .line 553
    :catchall_0
    move-exception v0

    .line 551
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 552
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getTrackId()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback"

    .line 388
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 390
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 391
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 394
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 395
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 397
    return v0

    .line 396
    :catchall_0
    move-exception v0

    .line 394
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 395
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 407
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback"

    .line 410
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 412
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 413
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 416
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 417
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 419
    return-object v0

    .line 418
    :catchall_0
    move-exception v0

    .line 416
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 417
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isInPlayqueueMode()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 586
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 587
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v3, "com.sonyericsson.music.IPlayback"

    .line 590
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 591
    iget-object v3, p0, Lcom/sonyericsson/music/IPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 592
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 593
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 596
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 597
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 599
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 593
    goto :goto_0

    .line 598
    :catchall_0
    move-exception v0

    .line 596
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 597
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isPlaying()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    :try_start_0
    const-string/jumbo v4, "com.sonyericsson.music.IPlayback"

    .line 247
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 248
    iget-object v4, p0, Lcom/sonyericsson/music/IPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 249
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 250
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 253
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 254
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 256
    return v0

    :cond_0
    move v0, v1

    .line 250
    goto :goto_0

    .line 255
    :catchall_0
    move-exception v0

    .line 253
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 254
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public next()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 302
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback"

    .line 304
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 306
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 310
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 312
    return-void

    .line 311
    :catchall_0
    move-exception v0

    .line 309
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 310
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public pause()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 284
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback"

    .line 286
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 288
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 294
    return-void

    .line 293
    :catchall_0
    move-exception v0

    .line 291
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public play()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 265
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 266
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback"

    .line 268
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 270
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 276
    return-void

    .line 275
    :catchall_0
    move-exception v0

    .line 273
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public prev()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback"

    .line 322
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 324
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 330
    return-void

    .line 329
    :catchall_0
    move-exception v0

    .line 327
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setQueuePosition(IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 565
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 566
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v3, "com.sonyericsson.music.IPlayback"

    .line 568
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 569
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    if-nez p2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 572
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 576
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 578
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 570
    goto :goto_0

    .line 577
    :catchall_0
    move-exception v0

    .line 575
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 576
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
