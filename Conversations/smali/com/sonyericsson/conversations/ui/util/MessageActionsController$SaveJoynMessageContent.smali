.class Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveJoynMessageContent;
.super Landroid/os/AsyncTask;
.source "MessageActionsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveJoynMessageContent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

.field private final mListener:Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMessageContentListener;

.field private final mObjectUri:Landroid/net/Uri;

.field private mResultFile:Ljava/io/File;

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Landroid/content/Context;Lcom/sonyericsson/conversations/model/JoynMessage;Landroid/net/Uri;Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMessageContentListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "message"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .param p4, "objectUri"    # Landroid/net/Uri;
    .param p5, "listener"    # Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMessageContentListener;

    .prologue
    .line 1668
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveJoynMessageContent;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1669
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveJoynMessageContent;->mContext:Landroid/content/Context;

    .line 1670
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveJoynMessageContent;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 1671
    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveJoynMessageContent;->mObjectUri:Landroid/net/Uri;

    .line 1672
    iput-object p5, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveJoynMessageContent;->mListener:Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMessageContentListener;

    .line 1668
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Landroid/content/Context;Lcom/sonyericsson/conversations/model/JoynMessage;Landroid/net/Uri;Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMessageContentListener;Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveJoynMessageContent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "message"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .param p4, "objectUri"    # Landroid/net/Uri;
    .param p5, "listener"    # Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMessageContentListener;

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveJoynMessageContent;-><init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Landroid/content/Context;Lcom/sonyericsson/conversations/model/JoynMessage;Landroid/net/Uri;Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMessageContentListener;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
    .locals 8
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 1679
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveJoynMessageContent;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/JoynMessage;->getFileUri()Landroid/net/Uri;

    move-result-object v2

    .line 1680
    .local v2, "fileUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveJoynMessageContent;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveJoynMessageContent;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveJoynMessageContent;->mObjectUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1681
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveJoynMessageContent;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/model/JoynMessage;->getMimeType()Ljava/lang/String;

    move-result-object v7

    .line 1680
    invoke-static {v3, v4, v5, v6, v7}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-wrap3(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveJoynMessageContent;->mResultFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1682
    const/4 v3, 0x0

    return-object v3

    .line 1685
    .end local v2    # "fileUri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 1686
    .local v1, "e":Ljava/lang/NullPointerException;
    return-object v1

    .line 1683
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1684
    .local v0, "e":Ljava/io/IOException;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Object;

    .prologue
    .line 1677
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "voids":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveJoynMessageContent;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1692
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveJoynMessageContent;->mResultFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 1693
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveJoynMessageContent;->mListener:Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMessageContentListener;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveJoynMessageContent;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveJoynMessageContent;->mResultFile:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMessageContentListener;->onMessageContentSaved(Lcom/sonyericsson/conversations/model/Message;Ljava/io/File;)V

    .line 1691
    :goto_0
    return-void

    .line 1695
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveJoynMessageContent;->mListener:Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMessageContentListener;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveJoynMessageContent;->mJoynMessage:Lcom/sonyericsson/conversations/model/JoynMessage;

    invoke-interface {v0, v1, p1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMessageContentListener;->onMessageContentSaveException(Lcom/sonyericsson/conversations/model/Message;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 1691
    check-cast p1, Ljava/lang/Exception;

    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveJoynMessageContent;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method
