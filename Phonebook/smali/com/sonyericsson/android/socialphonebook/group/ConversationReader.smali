.class public Lcom/sonyericsson/android/socialphonebook/group/ConversationReader;
.super Ljava/lang/Object;
.source "ConversationReader.java"


# static fields
.field private static final KEY_MMS_RECIPIENT_MAX_SIZE:Ljava/lang/String; = "max_recipients"

.field private static final MMS_MAX_RECIPIENT_SIZE_DEFAULT:I = 0x32

.field private static final TAG:Ljava/lang/String; = "ConversationReader"

.field public static final URI_CONVERSATION_PROVIDER:Ljava/lang/String; = "content://com.sonyericsson.conversations/settings"

.field private static sInstance:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/group/ConversationReader;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMmsMaxRecipientSize:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/group/ConversationReader;->readConversationProvider(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/group/ConversationReader;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/group/ConversationReader;->sInstance:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 40
    :goto_0
    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/ConversationReader;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/group/ConversationReader;-><init>(Landroid/content/Context;)V

    .line 42
    .local v0, "cr":Lcom/sonyericsson/android/socialphonebook/group/ConversationReader;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/sonyericsson/android/socialphonebook/group/ConversationReader;->sInstance:Ljava/lang/ref/WeakReference;

    .line 45
    .end local v0    # "cr":Lcom/sonyericsson/android/socialphonebook/group/ConversationReader;
    :cond_0
    return-object v0

    .line 39
    :cond_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/group/ConversationReader;->sInstance:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/group/ConversationReader;

    .restart local v0    # "cr":Lcom/sonyericsson/android/socialphonebook/group/ConversationReader;
    goto :goto_0
.end method

.method private readConversationProvider(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const-string/jumbo v2, "content://com.sonyericsson.conversations/settings"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 58
    .local v1, "convesationUri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 59
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/16 v2, 0x32

    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/group/ConversationReader;->mMmsMaxRecipientSize:I

    .line 60
    if-eqz v0, :cond_1

    .line 61
    const/4 v6, 0x0

    .line 66
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 67
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 68
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    const-string/jumbo v2, "max_recipients"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 70
    .local v8, "index":I
    if-ltz v8, :cond_0

    .line 71
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/group/ConversationReader;->mMmsMaxRecipientSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .end local v8    # "index":I
    :cond_0
    if-eqz v6, :cond_1

    .line 80
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 56
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v7

    .line 76
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "ConversationReader"

    const-string/jumbo v3, "readMaxRecipientSize: An exception occurs in reading provider of conversation application."

    invoke-static {v2, v3, v7}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    if-eqz v6, :cond_1

    .line 80
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 78
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 79
    if-eqz v6, :cond_2

    .line 80
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 78
    :cond_2
    throw v2
.end method


# virtual methods
.method public getMmsMaxRecipientNum()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/group/ConversationReader;->mMmsMaxRecipientSize:I

    return v0
.end method
