.class Lcom/google/android/gms/tagmanager/zzcu$3;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzcu;->dispatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbfU:Lcom/google/android/gms/tagmanager/zzcu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzcu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcu$3;->zzbfU:Lcom/google/android/gms/tagmanager/zzcu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcu$3;->zzbfU:Lcom/google/android/gms/tagmanager/zzcu;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzcu;->zze(Lcom/google/android/gms/tagmanager/zzcu;)Lcom/google/android/gms/tagmanager/zzau;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzau;->dispatch()V

    return-void
.end method
