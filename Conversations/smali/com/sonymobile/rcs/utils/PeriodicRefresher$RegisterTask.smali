.class Lcom/sonymobile/rcs/utils/PeriodicRefresher$RegisterTask;
.super Landroid/os/AsyncTask;
.source "PeriodicRefresher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/utils/PeriodicRefresher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisterTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/utils/PeriodicRefresher;


# direct methods
.method private constructor <init>(Lcom/sonymobile/rcs/utils/PeriodicRefresher;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher$RegisterTask;->this$0:Lcom/sonymobile/rcs/utils/PeriodicRefresher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/rcs/utils/PeriodicRefresher;Lcom/sonymobile/rcs/utils/PeriodicRefresher$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/rcs/utils/PeriodicRefresher;
    .param p2, "x1"    # Lcom/sonymobile/rcs/utils/PeriodicRefresher$1;

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/utils/PeriodicRefresher$RegisterTask;-><init>(Lcom/sonymobile/rcs/utils/PeriodicRefresher;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 196
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/utils/PeriodicRefresher$RegisterTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher$RegisterTask;->this$0:Lcom/sonymobile/rcs/utils/PeriodicRefresher;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->periodicProcessing()V

    const/4 v0, 0x0

    .line 206
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 196
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/utils/PeriodicRefresher$RegisterTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const-string/jumbo v0, "PeriodicRefresher"

    .line 211
    invoke-static {v0}, Lcom/sonymobile/rcs/utils/WakeLockUtils;->releaseWakeLock(Ljava/lang/String;)V

    .line 212
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 213
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 200
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 201
    return-void
.end method
