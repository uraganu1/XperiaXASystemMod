.class public Lcom/android/settings/deviceinfo/StorageWizardReady;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardReady.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageWizardReady$1;
    }
.end annotation


# instance fields
.field private final mStorageMountListener:Landroid/os/storage/StorageEventListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    .line 68
    new-instance v0, Lcom/android/settings/deviceinfo/StorageWizardReady$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageWizardReady$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardReady;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardReady;->mStorageMountListener:Landroid/os/storage/StorageEventListener;

    .line 28
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 33
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 34
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardReady;->mDisk:Landroid/os/storage/DiskInfo;

    if-nez v2, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->finish()V

    .line 36
    return-void

    .line 38
    :cond_0
    const v2, 0x7f04011b

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setContentView(I)V

    .line 40
    new-array v2, v6, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardReady;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x7f0b04e1

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setHeaderText(I[Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/StorageWizardReady;->findFirstVolume(I)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 45
    .local v1, "publicVol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/StorageWizardReady;->findFirstVolume(I)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 46
    .local v0, "privateVol":Landroid/os/storage/VolumeInfo;
    const-string/jumbo v2, "StorageWizardReady"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate(), publicVol : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " privateVol : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    if-eqz v1, :cond_2

    .line 49
    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setIllustrationInternal(Z)V

    .line 50
    new-array v2, v6, [Ljava/lang/String;

    .line 51
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardReady;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 50
    const v3, 0x7f0b04e2

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setBodyText(I[Ljava/lang/String;)V

    .line 58
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->getNextButton()Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f0b022a

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 60
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardReady;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardReady;->mStorageMountListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 32
    return-void

    .line 52
    :cond_2
    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setIllustrationInternal(Z)V

    .line 54
    new-array v2, v6, [Ljava/lang/String;

    .line 55
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardReady;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 54
    const v3, 0x7f0b04e3

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/deviceinfo/StorageWizardReady;->setBodyText(I[Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardReady;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardReady;->mStorageMountListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 86
    invoke-super {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onDestroy()V

    .line 84
    return-void
.end method

.method public onNavigateNext()V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardReady;->finishAffinity()V

    .line 64
    return-void
.end method
