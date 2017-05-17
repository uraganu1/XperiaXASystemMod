.class Lcom/google/android/gms/tagmanager/TagManager$3;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/TagManager;->zzHt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbln:Lcom/google/android/gms/tagmanager/TagManager;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/TagManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/TagManager$3;->zzbln:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager$3;->zzbln:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/TagManager;->dispatch()V

    goto :goto_0
.end method
