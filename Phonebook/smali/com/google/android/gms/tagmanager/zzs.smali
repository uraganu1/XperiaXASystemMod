.class Lcom/google/android/gms/tagmanager/zzs;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private zzbdh:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "https://www.googletagmanager.com"

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzs;->zzbdh:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public zzEq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzs;->zzbdh:Ljava/lang/String;

    return-object v0
.end method
