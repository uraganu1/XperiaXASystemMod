.class Lcom/gsma/services/rcs/capability/ICapabilityService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICapabilityService.java"

# interfaces
.implements Lcom/gsma/services/rcs/capability/ICapabilityService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;
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
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 177
    return-void
.end method


# virtual methods
.method public addCapabilitiesListener(Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 309
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v3, "com.gsma.services.rcs.capability.ICapabilityService"

    .line 312
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 313
    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 314
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 315
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 321
    return-void

    .line 313
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/gsma/services/rcs/capability/ICapabilitiesListener;->asBinder()Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 320
    :catchall_0
    move-exception v0

    .line 318
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public addContactCapabilitiesListener(Ljava/lang/String;Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v3, "com.gsma.services.rcs.capability.ICapabilityService"

    .line 342
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 344
    if-nez p2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 345
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 346
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 352
    return-void

    .line 344
    :cond_0
    :try_start_1
    invoke-interface {p2}, Lcom/gsma/services/rcs/capability/ICapabilitiesListener;->asBinder()Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 351
    :catchall_0
    move-exception v0

    .line 349
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public addServiceRegistrationListener(Lcom/gsma/services/rcs/IJoynServiceRegistrationListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 205
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v3, "com.gsma.services.rcs.capability.ICapabilityService"

    .line 208
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 209
    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 210
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 211
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 215
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 217
    return-void

    .line 209
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/gsma/services/rcs/IJoynServiceRegistrationListener;->asBinder()Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v0

    .line 214
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 215
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getContactCapabilities(Ljava/lang/String;)Lcom/gsma/services/rcs/capability/Capabilities;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.gsma.services.rcs.capability.ICapabilityService"

    .line 261
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 264
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 265
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 273
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 276
    return-object v0

    .line 266
    :cond_0
    :try_start_1
    sget-object v0, Lcom/gsma/services/rcs/capability/Capabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/capability/Capabilities;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v0

    .line 273
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "com.gsma.services.rcs.capability.ICapabilityService"

    .line 184
    return-object v0
.end method

.method public getMyCapabilities()Lcom/gsma/services/rcs/capability/Capabilities;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.gsma.services.rcs.capability.ICapabilityService"

    .line 239
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 241
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 242
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 250
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 251
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 253
    return-object v0

    .line 243
    :cond_0
    :try_start_1
    sget-object v0, Lcom/gsma/services/rcs/capability/Capabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/capability/Capabilities;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 252
    :catchall_0
    move-exception v0

    .line 250
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 251
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getServiceVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 372
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.gsma.services.rcs.capability.ICapabilityService"

    .line 375
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 377
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 378
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 381
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 384
    return v0

    .line 383
    :catchall_0
    move-exception v0

    .line 381
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isServiceRegistered()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 189
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    :try_start_0
    const-string/jumbo v4, "com.gsma.services.rcs.capability.ICapabilityService"

    .line 192
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 193
    iget-object v4, p0, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 194
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 195
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 198
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 199
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 201
    return v0

    :cond_0
    move v0, v1

    .line 195
    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    .line 198
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 199
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public removeCapabilitiesListener(Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 324
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v3, "com.gsma.services.rcs.capability.ICapabilityService"

    .line 327
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 328
    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 329
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 330
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 334
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 336
    return-void

    .line 328
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/gsma/services/rcs/capability/ICapabilitiesListener;->asBinder()Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 335
    :catchall_0
    move-exception v0

    .line 333
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 334
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public removeContactCapabilitiesListener(Ljava/lang/String;Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 356
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v3, "com.gsma.services.rcs.capability.ICapabilityService"

    .line 358
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 360
    if-nez p2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 361
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 362
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 366
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 368
    return-void

    .line 360
    :cond_0
    :try_start_1
    invoke-interface {p2}, Lcom/gsma/services/rcs/capability/ICapabilitiesListener;->asBinder()Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 367
    :catchall_0
    move-exception v0

    .line 365
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 366
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public removeServiceRegistrationListener(Lcom/gsma/services/rcs/IJoynServiceRegistrationListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v3, "com.gsma.services.rcs.capability.ICapabilityService"

    .line 223
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 224
    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 225
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 226
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 232
    return-void

    .line 224
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/gsma/services/rcs/IJoynServiceRegistrationListener;->asBinder()Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v0

    .line 229
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public requestAllContactsCapabilities()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.gsma.services.rcs.capability.ICapabilityService"

    .line 298
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 300
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 304
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 306
    return-void

    .line 305
    :catchall_0
    move-exception v0

    .line 303
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 304
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public requestContactCapabilities(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.gsma.services.rcs.capability.ICapabilityService"

    .line 283
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 286
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 290
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 292
    return-void

    .line 291
    :catchall_0
    move-exception v0

    .line 289
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 290
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
