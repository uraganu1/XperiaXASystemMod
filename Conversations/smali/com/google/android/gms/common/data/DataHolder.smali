.class public final Lcom/google/android/gms/common/data/DataHolder;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/data/DataHolder$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/data/zze;

.field private static final zzajq:Lcom/google/android/gms/common/data/DataHolder$zza;


# instance fields
.field mClosed:Z

.field private final mVersionCode:I

.field private final zzade:I

.field private final zzaji:[Ljava/lang/String;

.field zzajj:Landroid/os/Bundle;

.field private final zzajk:[Landroid/database/CursorWindow;

.field private final zzajl:Landroid/os/Bundle;

.field zzajm:[I

.field zzajn:I

.field private zzajo:Ljava/lang/Object;

.field private zzajp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/data/zze;

    invoke-direct {v0}, Lcom/google/android/gms/common/data/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/zze;

    new-instance v0, Lcom/google/android/gms/common/data/DataHolder$1;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/data/DataHolder$1;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->zzajq:Lcom/google/android/gms/common/data/DataHolder$zza;

    return-void
.end method

.method constructor <init>(I[Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "windows"    # [Landroid/database/CursorWindow;
    .param p4, "statusCode"    # I
    .param p5, "metadata"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->mClosed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzajp:Z

    iput p1, p0, Lcom/google/android/gms/common/data/DataHolder;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/common/data/DataHolder;->zzaji:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/data/DataHolder;->zzajk:[Landroid/database/CursorWindow;

    iput p4, p0, Lcom/google/android/gms/common/data/DataHolder;->zzade:I

    iput-object p5, p0, Lcom/google/android/gms/common/data/DataHolder;->zzajl:Landroid/os/Bundle;

    return-void
.end method

.method private zzg(Ljava/lang/String;I)V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzajj:Landroid/os/Bundle;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No such column: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzajj:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    if-gez p2, :cond_4

    :cond_2
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    iget v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zzajn:I

    invoke-direct {v0, p2, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Buffer is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzajn:I

    if-ge p2, v0, :cond_2

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/common/data/DataHolder;->mClosed:Z

    if-eqz v1, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/common/data/DataHolder;->mClosed:Z

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zzajk:[Landroid/database/CursorWindow;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zzajk:[Landroid/database/CursorWindow;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/database/CursorWindow;->close()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzajp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzajk:[Landroid/database/CursorWindow;

    array-length v0, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzajo:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzajo:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string/jumbo v1, "DataBuffer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0

    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "internal object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzajn:I

    return v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzade:I

    return v0
.end method

.method getVersionCode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->mVersionCode:I

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->mClosed:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/data/zze;->zza(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbH(I)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    if-gez p1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzab(Z)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzajm:[I

    array-length v0, v0

    if-lt v1, v0, :cond_2

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzajm:[I

    array-length v0, v0

    if-eq v1, v0, :cond_4

    :goto_3
    return v1

    :cond_1
    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzajn:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzajm:[I

    aget v0, v0, v1

    if-lt p1, v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3
.end method

.method public zzd(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zzg(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzajk:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zzajj:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzpZ()Landroid/os/Bundle;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzajl:Landroid/os/Bundle;

    return-object v0
.end method

.method public zzqd()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzajj:Landroid/os/Bundle;

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->zzaji:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzajk:[Landroid/database/CursorWindow;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzajm:[I

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->zzajk:[Landroid/database/CursorWindow;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    iput v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzajn:I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->zzajj:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->zzaji:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->zzajm:[I

    aput v0, v2, v1

    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->zzajk:[Landroid/database/CursorWindow;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v2

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->zzajk:[Landroid/database/CursorWindow;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v3

    sub-int v2, v3, v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method zzqe()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzaji:[Ljava/lang/String;

    return-object v0
.end method

.method zzqf()[Landroid/database/CursorWindow;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzajk:[Landroid/database/CursorWindow;

    return-object v0
.end method

.method public zzu(Ljava/lang/Object;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/common/data/DataHolder;->zzajo:Ljava/lang/Object;

    return-void
.end method
