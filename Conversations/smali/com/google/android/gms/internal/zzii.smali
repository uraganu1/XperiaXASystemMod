.class public Lcom/google/android/gms/internal/zzii;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field zzLE:J

.field zzLF:J

.field zzLG:I

.field zzLH:I

.field zzLI:I

.field final zzLq:Ljava/lang/String;

.field private final zzpV:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzii;->zzLE:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzii;->zzLF:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzii;->zzLG:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzii;->zzpV:Ljava/lang/Object;

    iput v1, p0, Lcom/google/android/gms/internal/zzii;->zzLH:I

    iput v1, p0, Lcom/google/android/gms/internal/zzii;->zzLI:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzii;->zzLq:Ljava/lang/String;

    return-void
.end method
