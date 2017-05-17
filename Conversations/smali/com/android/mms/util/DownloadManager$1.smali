.class Lcom/android/mms/util/DownloadManager$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/DownloadManager;


# direct methods
.method constructor <init>(Lcom/android/mms/util/DownloadManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/mms/util/DownloadManager;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/mms/util/DownloadManager$1;->this$0:Lcom/android/mms/util/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 68
    const-string/jumbo v0, "pref_key_mms_auto_retrieval"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    const-string/jumbo v0, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 68
    if-eqz v0, :cond_1

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager$1;->this$0:Lcom/android/mms/util/DownloadManager;

    invoke-static {v0}, Lcom/android/mms/util/DownloadManager;->-get0(Lcom/android/mms/util/DownloadManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager$1;->this$0:Lcom/android/mms/util/DownloadManager;

    invoke-static {v0}, Lcom/android/mms/util/DownloadManager;->-get0(Lcom/android/mms/util/DownloadManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/util/DownloadManager$1;->this$0:Lcom/android/mms/util/DownloadManager;

    invoke-virtual {v1}, Lcom/android/mms/util/DownloadManager;->getAutoDownloadState()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 67
    :cond_1
    return-void
.end method
