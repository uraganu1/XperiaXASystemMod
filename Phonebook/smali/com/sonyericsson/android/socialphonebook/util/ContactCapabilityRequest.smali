.class public Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;
.super Ljava/lang/Object;
.source "ContactCapabilityRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest$RequestHandler;
    }
.end annotation


# static fields
.field private static final CONTACT_CAPABILITY_REQUEST_MSG:I = 0x1

.field private static final MESSAGE_DELAY_MILLIS:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "ContactCapabilityRequest"

.field private static mRequest:Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;


# instance fields
.field private mCapabilityDiscoverer:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private constructHandler()Landroid/os/Handler;
    .locals 4

    .prologue
    .line 68
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "ContactCapabilityRequest"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 69
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 70
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 71
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 72
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Thread.getLooper() returned null."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_0
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest$RequestHandler;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest$RequestHandler;-><init>(Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;Landroid/os/Looper;)V

    return-object v2
.end method

.method public static declared-synchronized executeRequest(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactId"    # J

    .prologue
    const-class v1, Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;->mRequest:Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;->mRequest:Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;

    .line 54
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;->mRequest:Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;

    invoke-direct {v0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;->sendMessage(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 50
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sendMessage(J)V
    .locals 5
    .param p1, "contactId"    # J

    .prologue
    const/4 v3, 0x1

    .line 58
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;->constructHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;->mHandler:Landroid/os/Handler;

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 62
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;->mHandler:Landroid/os/Handler;

    .line 63
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 64
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 57
    return-void
.end method


# virtual methods
.method protected doInBackground(Ljava/lang/String;)V
    .locals 18
    .param p1, "contactId"    # Ljava/lang/String;

    .prologue
    .line 78
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    :cond_0
    return-void

    .line 82
    :cond_1
    const/4 v8, 0x0

    .line 83
    .local v8, "cursor":Landroid/database/Cursor;
    const/16 v16, 0x0

    .line 85
    .local v16, "number":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 86
    const-string/jumbo v4, "contact_id = ?"

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    .line 87
    const/4 v3, 0x0

    aput-object p1, v5, v3

    .line 85
    const/4 v3, 0x0

    .line 88
    const/4 v6, 0x0

    .line 85
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 90
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 92
    .end local v16    # "number":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "data1"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 93
    .local v16, "number":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_4

    .line 130
    if-eqz v8, :cond_3

    .line 131
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 94
    :cond_3
    return-void

    .line 98
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;->mCapabilityDiscoverer:Ljava/lang/Object;

    if-nez v1, :cond_5

    .line 100
    const-string/jumbo v1, "com.sonyericsson.appextensions.ApplicationExtensionFactory"

    .line 99
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 102
    .local v7, "appExtnFactory":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v1, "getCapabilityDiscoverer"

    .line 101
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    .line 102
    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 101
    invoke-virtual {v7, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 103
    .local v11, "getCapabilityDiscoverer":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v11, v7, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;->mCapabilityDiscoverer:Ljava/lang/Object;

    .line 107
    .end local v7    # "appExtnFactory":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "getCapabilityDiscoverer":Ljava/lang/reflect/Method;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;->mCapabilityDiscoverer:Ljava/lang/Object;

    if-eqz v1, :cond_6

    .line 108
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;->mCapabilityDiscoverer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 109
    const-string/jumbo v2, "getCapabilities"

    .line 108
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    .line 109
    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 110
    const-class v4, Landroid/os/Handler;

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 108
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 111
    .local v10, "getCapabilities":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;->mCapabilityDiscoverer:Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v16, v2, v3

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-virtual {v10, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    .end local v10    # "getCapabilities":Ljava/lang/reflect/Method;
    :cond_6
    :goto_0
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 130
    .end local v16    # "number":Ljava/lang/String;
    :cond_7
    if-eqz v8, :cond_8

    .line 131
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 77
    :cond_8
    return-void

    .line 123
    .restart local v16    # "number":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 124
    .local v14, "le":Ljava/lang/LinkageError;
    :try_start_3
    const-string/jumbo v1, "ContactCapabilityRequest"

    invoke-virtual {v14}, Ljava/lang/LinkageError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 129
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v14    # "le":Ljava/lang/LinkageError;
    .end local v16    # "number":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 130
    if-eqz v8, :cond_9

    .line 131
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 129
    :cond_9
    throw v1

    .line 121
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "number":Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 122
    .local v13, "ite":Ljava/lang/reflect/InvocationTargetException;
    :try_start_4
    const-string/jumbo v1, "ContactCapabilityRequest"

    invoke-virtual {v13}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    .end local v13    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v17

    .line 120
    .local v17, "se":Ljava/lang/SecurityException;
    const-string/jumbo v1, "ContactCapabilityRequest"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    .end local v17    # "se":Ljava/lang/SecurityException;
    :catch_3
    move-exception v12

    .line 118
    .local v12, "iae":Ljava/lang/IllegalAccessException;
    const-string/jumbo v1, "ContactCapabilityRequest"

    invoke-virtual {v12}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    .end local v12    # "iae":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v15

    .line 116
    .local v15, "nsme":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v1, "ContactCapabilityRequest"

    invoke-virtual {v15}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    .end local v15    # "nsme":Ljava/lang/NoSuchMethodException;
    :catch_5
    move-exception v9

    .line 114
    .local v9, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v1, "ContactCapabilityRequest"

    invoke-virtual {v9}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
