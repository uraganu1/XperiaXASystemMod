.class public abstract Lcom/google/android/gms/internal/og$a;
.super Landroid/os/Binder;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/internal/og;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/og;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/og$a$a;
    }
.end annotation


# direct methods
.method public static aP(Landroid/os/IBinder;)Lcom/google/android/gms/internal/og;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string/jumbo v0, "com.google.android.gms.location.places.internal.IPlacesCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/og$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/og$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0

    :cond_1
    return-object v0

    :cond_2
    instance-of v1, v0, Lcom/google/android/gms/internal/og;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/og;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.google.android.gms.location.places.internal.IPlacesCallbacks"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :sswitch_1
    const-string/jumbo v1, "com.google.android.gms.location.places.internal.IPlacesCallbacks"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/og$a;->X(Lcom/google/android/gms/common/data/DataHolder;)V

    return v2

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->B(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "com.google.android.gms.location.places.internal.IPlacesCallbacks"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/og$a;->Y(Lcom/google/android/gms/common/data/DataHolder;)V

    return v2

    :cond_1
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->B(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "com.google.android.gms.location.places.internal.IPlacesCallbacks"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_2

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/og$a;->Z(Lcom/google/android/gms/common/data/DataHolder;)V

    return v2

    :cond_2
    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->B(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
