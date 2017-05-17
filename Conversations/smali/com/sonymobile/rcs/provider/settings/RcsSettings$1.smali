.class Lcom/sonymobile/rcs/provider/settings/RcsSettings$1;
.super Landroid/os/AsyncTask;
.source "RcsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/provider/settings/RcsSettings;->reloadRcsSettingsCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/sonymobile/rcs/provider/settings/RcsSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/provider/settings/RcsSettings;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings$1;->this$0:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 148
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings$1;->this$0:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    # getter for: Lcom/sonymobile/rcs/provider/settings/RcsSettings;->mSettingsCache:Ljava/util/Map;
    invoke-static {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->access$000(Lcom/sonymobile/rcs/provider/settings/RcsSettings;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 152
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings$1;->this$0:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    iget-object v1, p0, Lcom/sonymobile/rcs/provider/settings/RcsSettings$1;->this$0:Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    # getter for: Lcom/sonymobile/rcs/provider/settings/RcsSettings;->mSettingsCache:Ljava/util/Map;
    invoke-static {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->access$000(Lcom/sonymobile/rcs/provider/settings/RcsSettings;)Ljava/util/Map;

    move-result-object v1

    # invokes: Lcom/sonymobile/rcs/provider/settings/RcsSettings;->copyRcsSettingsToMap(Ljava/util/Map;)V
    invoke-static {v0, v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->access$100(Lcom/sonymobile/rcs/provider/settings/RcsSettings;Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 153
    return-object v0
.end method
