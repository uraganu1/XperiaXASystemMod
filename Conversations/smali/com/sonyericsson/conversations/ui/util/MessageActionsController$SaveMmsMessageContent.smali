.class Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMmsMessageContent;
.super Landroid/os/AsyncTask;
.source "MessageActionsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveMmsMessageContent"
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

.field private final mListener:Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMessageContentListener;

.field private final mMmsMessage:Lcom/sonyericsson/conversations/model/MmsMessage;

.field private final mObjectUri:Landroid/net/Uri;

.field private mResultFile:Ljava/io/File;

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Landroid/content/Context;Lcom/sonyericsson/conversations/model/MmsMessage;Landroid/net/Uri;Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMessageContentListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "mmsMessage"    # Lcom/sonyericsson/conversations/model/MmsMessage;
    .param p4, "objectUri"    # Landroid/net/Uri;
    .param p5, "listener"    # Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMessageContentListener;

    .prologue
    .line 1712
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMmsMessageContent;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1713
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMmsMessageContent;->mContext:Landroid/content/Context;

    .line 1714
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMmsMessageContent;->mMmsMessage:Lcom/sonyericsson/conversations/model/MmsMessage;

    .line 1715
    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMmsMessageContent;->mObjectUri:Landroid/net/Uri;

    .line 1716
    iput-object p5, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMmsMessageContent;->mListener:Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMessageContentListener;

    .line 1712
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Landroid/content/Context;Lcom/sonyericsson/conversations/model/MmsMessage;Landroid/net/Uri;Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMessageContentListener;Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMmsMessageContent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "mmsMessage"    # Lcom/sonyericsson/conversations/model/MmsMessage;
    .param p4, "objectUri"    # Landroid/net/Uri;
    .param p5, "listener"    # Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMessageContentListener;

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMmsMessageContent;-><init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Landroid/content/Context;Lcom/sonyericsson/conversations/model/MmsMessage;Landroid/net/Uri;Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMessageContentListener;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
    .locals 12
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    const/4 v11, 0x0

    .line 1721
    const/4 v6, 0x0

    .line 1723
    .local v6, "part":Lcom/google/android/mms/pdu/PduPart;
    :try_start_0
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMmsMessageContent;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMmsMessageContent;->mMmsMessage:Lcom/sonyericsson/conversations/model/MmsMessage;

    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMmsMessageContent;->mObjectUri:Landroid/net/Uri;

    invoke-static {v8, v9, v10}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-wrap2(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Lcom/sonyericsson/conversations/model/MmsMessage;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduPart;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1728
    .local v6, "part":Lcom/google/android/mms/pdu/PduPart;
    if-nez v6, :cond_0

    .line 1729
    new-instance v8, Ljava/security/InvalidParameterException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Message "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMmsMessageContent;->mMmsMessage:Lcom/sonyericsson/conversations/model/MmsMessage;

    invoke-virtual {v10}, Lcom/sonyericsson/conversations/model/MmsMessage;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " doesn\'t contain data to save"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    return-object v8

    .line 1724
    .local v6, "part":Lcom/google/android/mms/pdu/PduPart;
    :catch_0
    move-exception v1

    .line 1725
    .local v1, "e":Lcom/google/android/mms/MmsException;
    return-object v1

    .line 1735
    .end local v1    # "e":Lcom/google/android/mms/MmsException;
    .local v6, "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_0
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v5

    .line 1736
    .local v5, "name":[B
    if-nez v5, :cond_1

    .line 1737
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v5

    .line 1739
    :cond_1
    if-nez v5, :cond_2

    .line 1740
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v5

    .line 1742
    :cond_2
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v8

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1743
    .local v7, "type":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 1745
    :try_start_1
    invoke-static {v5}, Landroid/webkit/URLUtil;->decode([B)[B

    move-result-object v0

    .line 1746
    .local v0, "decodedName":[B
    new-instance v4, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v0, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1757
    .end local v0    # "decodedName":[B
    .local v4, "filename":Ljava/lang/String;
    :goto_0
    :try_start_2
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMmsMessageContent;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMmsMessageContent;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMmsMessageContent;->mObjectUri:Landroid/net/Uri;

    invoke-static {v8, v9, v10, v4, v7}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-wrap3(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    iput-object v8, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMmsMessageContent;->mResultFile:Ljava/io/File;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1758
    return-object v11

    .line 1747
    .end local v4    # "filename":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 1750
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .restart local v4    # "filename":Ljava/lang/String;
    goto :goto_0

    .line 1753
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "filename":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMmsMessageContent;->mObjectUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "filename":Ljava/lang/String;
    goto :goto_0

    .line 1759
    :catch_2
    move-exception v2

    .line 1760
    .local v2, "e":Ljava/io/IOException;
    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Object;

    .prologue
    .line 1720
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "voids":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMmsMessageContent;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1767
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMmsMessageContent;->mResultFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 1768
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMmsMessageContent;->mListener:Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMessageContentListener;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMmsMessageContent;->mMmsMessage:Lcom/sonyericsson/conversations/model/MmsMessage;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMmsMessageContent;->mResultFile:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMessageContentListener;->onMessageContentSaved(Lcom/sonyericsson/conversations/model/Message;Ljava/io/File;)V

    .line 1766
    :goto_0
    return-void

    .line 1770
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMmsMessageContent;->mListener:Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMessageContentListener;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMmsMessageContent;->mMmsMessage:Lcom/sonyericsson/conversations/model/MmsMessage;

    invoke-interface {v0, v1, p1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMessageContentListener;->onMessageContentSaveException(Lcom/sonyericsson/conversations/model/Message;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 1766
    check-cast p1, Ljava/lang/Exception;

    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$SaveMmsMessageContent;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method
