.class public Lcom/google/android/gms/internal/zzix;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private zzMG:Landroid/os/HandlerThread;

.field private zzMH:I

.field private final zzpV:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzix;->zzMG:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzix;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzix;->zzMH:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzix;->zzpV:Ljava/lang/Object;

    return-void
.end method
