.class Lcom/android/mms/util/DownloadManager$DownloadManagerHolder;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadManagerHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/mms/util/DownloadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 116
    new-instance v0, Lcom/android/mms/util/DownloadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/mms/util/DownloadManager;-><init>(Lcom/android/mms/util/DownloadManager;)V

    sput-object v0, Lcom/android/mms/util/DownloadManager$DownloadManagerHolder;->INSTANCE:Lcom/android/mms/util/DownloadManager;

    .line 115
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
