.class public abstract Lcom/google/android/gms/internal/ni$a;
.super Landroid/os/Binder;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/internal/ni;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ni$a$a;
    }
.end annotation


# direct methods
.method public static aO(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ni;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ni$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ni$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0

    :cond_1
    return-object v0

    :cond_2
    instance-of v1, v0, Lcom/google/android/gms/internal/ni;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/ni;

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :sswitch_1
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/nn;->CREATOR:Lcom/google/android/gms/internal/no;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v5

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/nh$a;->aN(Landroid/os/IBinder;)Lcom/google/android/gms/internal/nh;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/gms/internal/ni$a;->a(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/nh;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_0
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    move-object v1, v5

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/nh$a;->aN(Landroid/os/IBinder;)Lcom/google/android/gms/internal/nh;

    move-result-object v0

    invoke-virtual {p0, v1, v5, v0}, Lcom/google/android/gms/internal/ni$a;->a(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/nh;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_1
    sget-object v0, Lcom/google/android/gms/location/GeofencingRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/GeofencingRequest;

    move-object v1, v0

    goto :goto_1

    :cond_2
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v5, v0

    goto :goto_2

    :sswitch_3
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_3

    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/nh$a;->aN(Landroid/os/IBinder;)Lcom/google/android/gms/internal/nh;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5, v0, v1}, Lcom/google/android/gms/internal/ni$a;->a(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/nh;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_3
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v5, v0

    goto :goto_3

    :sswitch_4
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/nh$a;->aN(Landroid/os/IBinder;)Lcom/google/android/gms/internal/nh;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ni$a;->a([Ljava/lang/String;Lcom/google/android/gms/internal/nh;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_5
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/nh$a;->aN(Landroid/os/IBinder;)Lcom/google/android/gms/internal/nh;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ni$a;->a(Lcom/google/android/gms/internal/nh;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_6
    const-string/jumbo v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_4

    move v1, v0

    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_5

    :goto_5
    invoke-virtual {p0, v2, v3, v1, v5}, Lcom/google/android/gms/internal/ni$a;->a(JZLandroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_4
    move v1, v7

    goto :goto_4

    :cond_5
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v5, v0

    goto :goto_5

    :sswitch_7
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_6

    :goto_6
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ni$a;->a(Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_6
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v5, v0

    goto :goto_6

    :sswitch_8
    const-string/jumbo v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ni$a;->ni()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v1, :cond_7

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    return v7

    :cond_7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v7}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    :sswitch_9
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_8

    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/b$a;->aL(Landroid/os/IBinder;)Lcom/google/android/gms/location/b;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/internal/ni$a;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/b;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_8
    sget-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Lcom/google/android/gms/location/d;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/d;->cJ(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v5

    goto :goto_8

    :sswitch_a
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_9

    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/b$a;->aL(Landroid/os/IBinder;)Lcom/google/android/gms/location/b;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5, v0, v1}, Lcom/google/android/gms/internal/ni$a;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/b;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_9
    sget-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Lcom/google/android/gms/location/d;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/d;->cJ(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v5

    goto :goto_9

    :sswitch_b
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_a

    move-object v1, v5

    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_b

    :goto_b
    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/ni$a;->a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_a
    sget-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Lcom/google/android/gms/location/d;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/d;->cJ(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    move-object v1, v0

    goto :goto_a

    :cond_b
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v5, v0

    goto :goto_b

    :sswitch_c
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_c

    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/b$a;->aL(Landroid/os/IBinder;)Lcom/google/android/gms/location/b;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/internal/ni$a;->a(Lcom/google/android/gms/internal/nl;Lcom/google/android/gms/location/b;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_c
    sget-object v0, Lcom/google/android/gms/internal/nl;->CREATOR:Lcom/google/android/gms/internal/nm;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/nm;->cM(Landroid/os/Parcel;)Lcom/google/android/gms/internal/nl;

    move-result-object v5

    goto :goto_c

    :sswitch_d
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_d

    move-object v1, v5

    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_e

    :goto_e
    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/ni$a;->a(Lcom/google/android/gms/internal/nl;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_d
    sget-object v0, Lcom/google/android/gms/internal/nl;->CREATOR:Lcom/google/android/gms/internal/nm;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/nm;->cM(Landroid/os/Parcel;)Lcom/google/android/gms/internal/nl;

    move-result-object v0

    move-object v1, v0

    goto :goto_d

    :cond_e
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v5, v0

    goto :goto_e

    :sswitch_e
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/b$a;->aL(Landroid/os/IBinder;)Lcom/google/android/gms/location/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ni$a;->a(Lcom/google/android/gms/location/b;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_f
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_f

    :goto_f
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ni$a;->b(Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_f
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v5, v0

    goto :goto_f

    :sswitch_10
    const-string/jumbo v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_10

    :goto_10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ni$a;->S(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_10
    move v0, v7

    goto :goto_10

    :sswitch_11
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_11

    :goto_11
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ni$a;->b(Landroid/location/Location;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_11
    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    move-object v5, v0

    goto :goto_11

    :sswitch_12
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_12

    move-object v1, v5

    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_13

    move-object v3, v5

    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_14

    move-object v4, v5

    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/og$a;->aP(Landroid/os/IBinder;)Lcom/google/android/gms/internal/og;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ni$a;->a(Lcom/google/android/gms/maps/model/LatLngBounds;ILcom/google/android/gms/internal/nu;Lcom/google/android/gms/internal/oh;Lcom/google/android/gms/internal/og;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_12
    sget-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/g;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/g;->dd(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    goto :goto_12

    :cond_13
    sget-object v0, Lcom/google/android/gms/internal/nu;->CREATOR:Lcom/google/android/gms/internal/nv;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/nv;->cQ(Landroid/os/Parcel;)Lcom/google/android/gms/internal/nu;

    move-result-object v3

    goto :goto_13

    :cond_14
    sget-object v0, Lcom/google/android/gms/internal/oh;->CREATOR:Lcom/google/android/gms/internal/oi;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/oi;->cW(Landroid/os/Parcel;)Lcom/google/android/gms/internal/oh;

    move-result-object v4

    goto :goto_14

    :sswitch_13
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_15

    move-object v1, v5

    :goto_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_16

    move-object v4, v5

    :goto_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_17

    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/og$a;->aP(Landroid/os/IBinder;)Lcom/google/android/gms/internal/og;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ni$a;->a(Lcom/google/android/gms/maps/model/LatLngBounds;ILjava/lang/String;Lcom/google/android/gms/internal/nu;Lcom/google/android/gms/internal/oh;Lcom/google/android/gms/internal/og;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_15
    sget-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/g;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/g;->dd(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    goto :goto_15

    :cond_16
    sget-object v0, Lcom/google/android/gms/internal/nu;->CREATOR:Lcom/google/android/gms/internal/nv;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/nv;->cQ(Landroid/os/Parcel;)Lcom/google/android/gms/internal/nu;

    move-result-object v4

    goto :goto_16

    :cond_17
    sget-object v0, Lcom/google/android/gms/internal/oh;->CREATOR:Lcom/google/android/gms/internal/oi;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/oi;->cW(Landroid/os/Parcel;)Lcom/google/android/gms/internal/oh;

    move-result-object v5

    goto :goto_17

    :sswitch_14
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_18

    :goto_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/og$a;->aP(Landroid/os/IBinder;)Lcom/google/android/gms/internal/og;

    move-result-object v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/gms/internal/ni$a;->a(Ljava/lang/String;Lcom/google/android/gms/internal/oh;Lcom/google/android/gms/internal/og;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_18
    sget-object v1, Lcom/google/android/gms/internal/oh;->CREATOR:Lcom/google/android/gms/internal/oi;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/oi;->cW(Landroid/os/Parcel;)Lcom/google/android/gms/internal/oh;

    move-result-object v5

    goto :goto_18

    :sswitch_15
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_19

    move-object v0, v5

    :goto_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_1a

    move-object v1, v5

    :goto_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_1b

    :goto_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/og$a;->aP(Landroid/os/IBinder;)Lcom/google/android/gms/internal/og;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v5, v2}, Lcom/google/android/gms/internal/ni$a;->a(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/internal/nu;Lcom/google/android/gms/internal/oh;Lcom/google/android/gms/internal/og;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_19
    sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/i;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/i;->de(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    goto :goto_19

    :cond_1a
    sget-object v1, Lcom/google/android/gms/internal/nu;->CREATOR:Lcom/google/android/gms/internal/nv;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/nv;->cQ(Landroid/os/Parcel;)Lcom/google/android/gms/internal/nu;

    move-result-object v1

    goto :goto_1a

    :cond_1b
    sget-object v2, Lcom/google/android/gms/internal/oh;->CREATOR:Lcom/google/android/gms/internal/oi;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/oi;->cW(Landroid/os/Parcel;)Lcom/google/android/gms/internal/oh;

    move-result-object v5

    goto :goto_1b

    :sswitch_16
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1c

    move-object v0, v5

    :goto_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_1d

    :goto_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/og$a;->aP(Landroid/os/IBinder;)Lcom/google/android/gms/internal/og;

    move-result-object v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/gms/internal/ni$a;->a(Lcom/google/android/gms/internal/nu;Lcom/google/android/gms/internal/oh;Lcom/google/android/gms/internal/og;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_1c
    sget-object v0, Lcom/google/android/gms/internal/nu;->CREATOR:Lcom/google/android/gms/internal/nv;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/nv;->cQ(Landroid/os/Parcel;)Lcom/google/android/gms/internal/nu;

    move-result-object v0

    goto :goto_1c

    :cond_1d
    sget-object v1, Lcom/google/android/gms/internal/oh;->CREATOR:Lcom/google/android/gms/internal/oi;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/oi;->cW(Landroid/os/Parcel;)Lcom/google/android/gms/internal/oh;

    move-result-object v5

    goto :goto_1d

    :sswitch_17
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_1e

    :goto_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/og$a;->aP(Landroid/os/IBinder;)Lcom/google/android/gms/internal/og;

    move-result-object v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/gms/internal/ni$a;->b(Ljava/lang/String;Lcom/google/android/gms/internal/oh;Lcom/google/android/gms/internal/og;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_1e
    sget-object v1, Lcom/google/android/gms/internal/oh;->CREATOR:Lcom/google/android/gms/internal/oi;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/oi;->cW(Landroid/os/Parcel;)Lcom/google/android/gms/internal/oh;

    move-result-object v5

    goto :goto_1e

    :sswitch_18
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_1f

    :goto_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/og$a;->aP(Landroid/os/IBinder;)Lcom/google/android/gms/internal/og;

    move-result-object v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/gms/internal/ni$a;->a(Ljava/util/List;Lcom/google/android/gms/internal/oh;Lcom/google/android/gms/internal/og;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_1f
    sget-object v1, Lcom/google/android/gms/internal/oh;->CREATOR:Lcom/google/android/gms/internal/oi;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/oi;->cW(Landroid/os/Parcel;)Lcom/google/android/gms/internal/oh;

    move-result-object v5

    goto :goto_1f

    :sswitch_19
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_20

    move-object v1, v5

    :goto_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_21

    move-object v2, v5

    :goto_21
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_22

    move-object v4, v5

    :goto_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/og$a;->aP(Landroid/os/IBinder;)Lcom/google/android/gms/internal/og;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ni$a;->a(Lcom/google/android/gms/internal/oe;Lcom/google/android/gms/maps/model/LatLngBounds;Ljava/util/List;Lcom/google/android/gms/internal/oh;Lcom/google/android/gms/internal/og;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_20
    sget-object v0, Lcom/google/android/gms/internal/oe;->CREATOR:Lcom/google/android/gms/internal/of;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/of;->cV(Landroid/os/Parcel;)Lcom/google/android/gms/internal/oe;

    move-result-object v1

    goto :goto_20

    :cond_21
    sget-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/g;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/g;->dd(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    goto :goto_21

    :cond_22
    sget-object v0, Lcom/google/android/gms/internal/oh;->CREATOR:Lcom/google/android/gms/internal/oi;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/oi;->cW(Landroid/os/Parcel;)Lcom/google/android/gms/internal/oh;

    move-result-object v4

    goto :goto_22

    :sswitch_1a
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_23

    move-object v1, v5

    :goto_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_24

    move-object v2, v5

    :goto_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_25

    :goto_25
    invoke-virtual {p0, v1, v2, v5}, Lcom/google/android/gms/internal/ni$a;->a(Lcom/google/android/gms/internal/ny;Lcom/google/android/gms/internal/oh;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_23
    sget-object v0, Lcom/google/android/gms/internal/ny;->CREATOR:Lcom/google/android/gms/internal/nz;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/nz;->cS(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ny;

    move-result-object v0

    move-object v1, v0

    goto :goto_23

    :cond_24
    sget-object v0, Lcom/google/android/gms/internal/oh;->CREATOR:Lcom/google/android/gms/internal/oi;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/oi;->cW(Landroid/os/Parcel;)Lcom/google/android/gms/internal/oh;

    move-result-object v0

    move-object v2, v0

    goto :goto_24

    :cond_25
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v5, v0

    goto :goto_25

    :sswitch_1b
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_26

    move-object v1, v5

    :goto_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_27

    :goto_27
    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/ni$a;->a(Lcom/google/android/gms/internal/oh;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_26
    sget-object v0, Lcom/google/android/gms/internal/oh;->CREATOR:Lcom/google/android/gms/internal/oi;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/oi;->cW(Landroid/os/Parcel;)Lcom/google/android/gms/internal/oh;

    move-result-object v0

    move-object v1, v0

    goto :goto_26

    :cond_27
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v5, v0

    goto :goto_27

    :sswitch_1c
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_28

    move-object v1, v5

    :goto_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_29

    move-object v2, v5

    :goto_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2a

    :goto_2a
    invoke-virtual {p0, v1, v2, v5}, Lcom/google/android/gms/internal/ni$a;->a(Lcom/google/android/gms/internal/ns;Lcom/google/android/gms/internal/oh;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_28
    sget-object v0, Lcom/google/android/gms/internal/ns;->CREATOR:Lcom/google/android/gms/internal/nt;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/nt;->cP(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ns;

    move-result-object v0

    move-object v1, v0

    goto :goto_28

    :cond_29
    sget-object v0, Lcom/google/android/gms/internal/oh;->CREATOR:Lcom/google/android/gms/internal/oi;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/oi;->cW(Landroid/os/Parcel;)Lcom/google/android/gms/internal/oh;

    move-result-object v0

    move-object v2, v0

    goto :goto_29

    :cond_2a
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v5, v0

    goto :goto_2a

    :sswitch_1d
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2b

    move-object v1, v5

    :goto_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2c

    :goto_2c
    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/ni$a;->b(Lcom/google/android/gms/internal/oh;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_2b
    sget-object v0, Lcom/google/android/gms/internal/oh;->CREATOR:Lcom/google/android/gms/internal/oi;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/oi;->cW(Landroid/os/Parcel;)Lcom/google/android/gms/internal/oh;

    move-result-object v0

    move-object v1, v0

    goto :goto_2b

    :cond_2c
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v5, v0

    goto :goto_2c

    :sswitch_1e
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2d

    move-object v2, v5

    :goto_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2e

    move-object v3, v5

    :goto_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2f

    move-object v4, v5

    :goto_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/og$a;->aP(Landroid/os/IBinder;)Lcom/google/android/gms/internal/og;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ni$a;->a(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/oh;Lcom/google/android/gms/internal/og;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_2d
    sget-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/g;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/g;->dd(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    goto :goto_2d

    :cond_2e
    sget-object v0, Lcom/google/android/gms/internal/nq;->CREATOR:Lcom/google/android/gms/internal/nr;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/nr;->cO(Landroid/os/Parcel;)Lcom/google/android/gms/internal/nq;

    move-result-object v3

    goto :goto_2e

    :cond_2f
    sget-object v0, Lcom/google/android/gms/internal/oh;->CREATOR:Lcom/google/android/gms/internal/oi;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/oi;->cW(Landroid/os/Parcel;)Lcom/google/android/gms/internal/oh;

    move-result-object v4

    goto :goto_2f

    :sswitch_1f
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_30

    move-object v0, v5

    :goto_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_31

    :goto_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/og$a;->aP(Landroid/os/IBinder;)Lcom/google/android/gms/internal/og;

    move-result-object v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/gms/internal/ni$a;->a(Lcom/google/android/gms/internal/oc;Lcom/google/android/gms/internal/oh;Lcom/google/android/gms/internal/og;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_30
    sget-object v0, Lcom/google/android/gms/internal/oc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/oc;

    goto :goto_30

    :cond_31
    sget-object v1, Lcom/google/android/gms/internal/oh;->CREATOR:Lcom/google/android/gms/internal/oi;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/oi;->cW(Landroid/os/Parcel;)Lcom/google/android/gms/internal/oh;

    move-result-object v5

    goto :goto_31

    :sswitch_20
    const-string/jumbo v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ni$a;->bZ(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v1, :cond_32

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_32
    return v7

    :cond_32
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v7}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_32

    :sswitch_21
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_33

    move-object v0, v5

    :goto_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_34

    :goto_34
    invoke-virtual {p0, v0, v5}, Lcom/google/android/gms/internal/ni$a;->a(Lcom/google/android/gms/internal/nw;Lcom/google/android/gms/internal/oh;)V

    return v7

    :cond_33
    sget-object v0, Lcom/google/android/gms/internal/nw;->CREATOR:Lcom/google/android/gms/internal/nx;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/nx;->cR(Landroid/os/Parcel;)Lcom/google/android/gms/internal/nw;

    move-result-object v0

    goto :goto_33

    :cond_34
    sget-object v1, Lcom/google/android/gms/internal/oh;->CREATOR:Lcom/google/android/gms/internal/oi;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/oi;->cW(Landroid/os/Parcel;)Lcom/google/android/gms/internal/oh;

    move-result-object v5

    goto :goto_34

    :sswitch_22
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_35

    :goto_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/internal/ni$a;->a(Landroid/location/Location;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_35
    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    move-object v5, v0

    goto :goto_35

    :sswitch_23
    const-string/jumbo v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ni$a;->ca(Ljava/lang/String;)Lcom/google/android/gms/location/e;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v1, :cond_36

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_36
    return v7

    :cond_36
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v7}, Lcom/google/android/gms/location/e;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_36

    :sswitch_24
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ni$a;->nj()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v7

    :sswitch_25
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ni$a;->nk()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v7

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_b
        0xa -> :sswitch_e
        0xb -> :sswitch_f
        0xc -> :sswitch_10
        0xd -> :sswitch_11
        0xe -> :sswitch_12
        0xf -> :sswitch_14
        0x10 -> :sswitch_15
        0x11 -> :sswitch_16
        0x12 -> :sswitch_1a
        0x13 -> :sswitch_1b
        0x14 -> :sswitch_a
        0x15 -> :sswitch_20
        0x19 -> :sswitch_21
        0x1a -> :sswitch_22
        0x22 -> :sswitch_23
        0x2a -> :sswitch_17
        0x2e -> :sswitch_1f
        0x2f -> :sswitch_13
        0x30 -> :sswitch_1c
        0x31 -> :sswitch_1d
        0x32 -> :sswitch_19
        0x33 -> :sswitch_24
        0x34 -> :sswitch_c
        0x35 -> :sswitch_d
        0x36 -> :sswitch_25
        0x37 -> :sswitch_1e
        0x39 -> :sswitch_2
        0x3a -> :sswitch_18
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
