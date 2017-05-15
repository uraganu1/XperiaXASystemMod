.class Lcom/mediatek/audioprofile/AudioProfileSettings$ResetTask;
.super Landroid/os/AsyncTask;
.source "AudioProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/AudioProfileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final RESET_ONGOING:I = 0x1

.field private static final RESET_SUCCESS:I


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/AudioProfileSettings;


# direct methods
.method private constructor <init>(Lcom/mediatek/audioprofile/AudioProfileSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/audioprofile/AudioProfileSettings;

    .prologue
    .line 674
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings$ResetTask;->this$0:Lcom/mediatek/audioprofile/AudioProfileSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/audioprofile/AudioProfileSettings;Lcom/mediatek/audioprofile/AudioProfileSettings$ResetTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/audioprofile/AudioProfileSettings;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileSettings$ResetTask;-><init>(Lcom/mediatek/audioprofile/AudioProfileSettings;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1, "arg"    # [Ljava/lang/String;

    .prologue
    .line 686
    const/4 v0, 0x1

    .line 687
    .local v0, "result":I
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings$ResetTask;->this$0:Lcom/mediatek/audioprofile/AudioProfileSettings;

    invoke-static {v1}, Lcom/mediatek/audioprofile/AudioProfileSettings;->-get4(Lcom/mediatek/audioprofile/AudioProfileSettings;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->resetProfiles()V

    .line 688
    const/4 v0, 0x0

    .line 689
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg"    # [Ljava/lang/Object;

    .prologue
    .line 685
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "arg":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileSettings$ResetTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 700
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings$ResetTask;->this$0:Lcom/mediatek/audioprofile/AudioProfileSettings;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->-get2(Lcom/mediatek/audioprofile/AudioProfileSettings;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 699
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 699
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileSettings$ResetTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
