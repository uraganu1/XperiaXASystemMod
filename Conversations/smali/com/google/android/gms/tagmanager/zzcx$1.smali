.class Lcom/google/android/gms/tagmanager/zzcx$1;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzcx$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzcx;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcx$zza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzd(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method
