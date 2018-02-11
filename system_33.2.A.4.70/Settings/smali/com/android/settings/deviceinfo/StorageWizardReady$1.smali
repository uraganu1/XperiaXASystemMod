.class Lcom/android/settings/deviceinfo/StorageWizardReady$1;
.super Landroid/os/storage/StorageEventListener;
.source "StorageWizardReady.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageWizardReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageWizardReady;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardReady;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/deviceinfo/StorageWizardReady;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardReady$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardReady;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 4
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .prologue
    const/4 v3, 0x0

    .line 71
    const-string/jumbo v0, "StorageWizardReady"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVolumeStateChanged, disk : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 72
    const-string/jumbo v2, ", type : "

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 72
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 72
    const-string/jumbo v2, ", state : "

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 72
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v2

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardReady$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardReady;

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageWizardReady;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardReady$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardReady;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setIllustrationInternal(Z)V

    .line 77
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardReady$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardReady;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 78
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardReady$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardReady;

    iget-object v2, v2, Lcom/android/settings/deviceinfo/StorageWizardReady;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 77
    const v2, 0x7f0b04e2

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setBodyText(I[Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method
