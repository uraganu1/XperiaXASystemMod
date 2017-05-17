.class Lcom/google/android/gms/internal/zzby$2;
.super Lcom/google/android/gms/internal/zzby;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzby;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzby;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-object p2

    :cond_0
    move-object p2, p1

    goto :goto_0
.end method
