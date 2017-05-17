.class Lcom/sonyericsson/music/IPlayback_v3$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPlayback_v3.java"

# interfaces
.implements Lcom/sonyericsson/music/IPlayback_v3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/IPlayback_v3$Stub;
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
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Lcom/sonyericsson/music/IPlayback_v3$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 232
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback_v3$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 664
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 665
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 668
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback_v3$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 672
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 673
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 681
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 682
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 684
    return-object v0

    .line 674
    :cond_0
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 683
    :catchall_0
    move-exception v0

    .line 681
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 682
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
    .line 455
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 456
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 459
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback_v3$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 461
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 462
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 465
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 466
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 468
    return v0

    .line 467
    :catchall_0
    move-exception v0

    .line 465
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 466
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
    .line 478
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 479
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 482
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback_v3$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 484
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 485
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 488
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 489
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 491
    return-object v0

    .line 490
    :catchall_0
    move-exception v0

    .line 488
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 489
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
    .line 500
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 501
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 504
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback_v3$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 506
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 507
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 510
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 511
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 513
    return v0

    .line 512
    :catchall_0
    move-exception v0

    .line 510
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 511
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
    .line 522
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 523
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 526
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback_v3$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 528
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 529
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 532
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 533
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 535
    return-object v0

    .line 534
    :catchall_0
    move-exception v0

    .line 532
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 533
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
    .line 366
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 367
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 370
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback_v3$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 372
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 373
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 376
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 379
    return-wide v4

    .line 378
    :catchall_0
    move-exception v0

    .line 376
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 239
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
    .line 545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 546
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 549
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback_v3$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 551
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 552
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 555
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 556
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 558
    return-object v0

    .line 557
    :catchall_0
    move-exception v0

    .line 555
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 556
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
    .line 635
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 636
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 639
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback_v3$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 641
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 642
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 650
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 651
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 653
    return-object v0

    .line 643
    :cond_0
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 652
    :catchall_0
    move-exception v0

    .line 650
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 651
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
    .line 389
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 393
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback_v3$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 395
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 396
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 399
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 400
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 402
    return-wide v4

    .line 401
    :catchall_0
    move-exception v0

    .line 399
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 400
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
    .line 568
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 569
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 572
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback_v3$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 574
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 575
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 578
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 579
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 581
    return v0

    .line 580
    :catchall_0
    move-exception v0

    .line 578
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 579
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
    .line 411
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 412
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 415
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback_v3$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 417
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 418
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 421
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 422
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 424
    return v0

    .line 423
    :catchall_0
    move-exception v0

    .line 421
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 422
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
    .line 433
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 434
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 437
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback_v3$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 439
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 440
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 443
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 444
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 446
    return-object v0

    .line 445
    :catchall_0
    move-exception v0

    .line 443
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 444
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

    .line 613
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 614
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v3, "com.sonyericsson.music.IPlayback_v3"

    .line 617
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 618
    iget-object v3, p0, Lcom/sonyericsson/music/IPlayback_v3$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 619
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 620
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 623
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 624
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 626
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 620
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

    .line 250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 251
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    :try_start_0
    const-string/jumbo v4, "com.sonyericsson.music.IPlayback_v3"

    .line 254
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 255
    iget-object v4, p0, Lcom/sonyericsson/music/IPlayback_v3$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 256
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 257
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 260
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 261
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 263
    return v0

    :cond_0
    move v0, v1

    .line 257
    goto :goto_0

    .line 262
    :catchall_0
    move-exception v0

    .line 260
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 261
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
    .line 308
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 309
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 311
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback_v3$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 313
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 317
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 319
    return-void

    .line 318
    :catchall_0
    move-exception v0

    .line 316
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 317
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
    .line 290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 293
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback_v3$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 295
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 299
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 301
    return-void

    .line 300
    :catchall_0
    move-exception v0

    .line 298
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 299
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
    .line 272
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 275
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback_v3$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 277
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 281
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 283
    return-void

    .line 282
    :catchall_0
    move-exception v0

    .line 280
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 281
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
    .line 346
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 349
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback_v3$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 351
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 355
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 357
    return-void

    .line 356
    :catchall_0
    move-exception v0

    .line 354
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 355
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

    .line 592
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 593
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v3, "com.sonyericsson.music.IPlayback_v3"

    .line 595
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 596
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    if-nez p2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback_v3$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 599
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 605
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 597
    goto :goto_0

    .line 604
    :catchall_0
    move-exception v0

    .line 602
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public shuffleNext()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 331
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/sonyericsson/music/IPlayback_v3$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 333
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 339
    return-void

    .line 338
    :catchall_0
    move-exception v0

    .line 336
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
