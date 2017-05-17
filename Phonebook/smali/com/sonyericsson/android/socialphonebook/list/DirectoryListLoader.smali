.class public Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;
.super Landroid/content/AsyncTaskLoader;
.source "DirectoryListLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader$DirectoryQuery;,
        Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field public static final DIRECTORY_TYPE:Ljava/lang/String; = "directoryType"

.field private static final RESULT_PROJECTION:[Ljava/lang/String;

.field public static final SEARCH_MODE_DEFAULT:I = 0x1

.field public static final SEARCH_MODE_NONE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDefaultDirectoryList:Landroid/database/MatrixCursor;

.field private mDirectorySearchMode:I

.field private mLocalInvisibleDirectoryEnabled:Z

.field private final mObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const-class v0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;->TAG:Ljava/lang/String;

    .line 65
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 66
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 67
    const-string/jumbo v1, "directoryType"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 68
    const-string/jumbo v1, "displayName"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 69
    const-string/jumbo v1, "photoSupport"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 65
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;->RESULT_PROJECTION:[Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader$1;-><init>(Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;->mObserver:Landroid/database/ContentObserver;

    .line 84
    return-void
.end method

.method private getDefaultDirectories()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;->mDefaultDirectoryList:Landroid/database/MatrixCursor;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;->RESULT_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;->mDefaultDirectoryList:Landroid/database/MatrixCursor;

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;->mDefaultDirectoryList:Landroid/database/MatrixCursor;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 170
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    .line 171
    const-string/jumbo v2, "Contacts"

    aput-object v2, v1, v6

    .line 172
    aput-object v4, v1, v7

    .line 173
    aput-object v4, v1, v8

    .line 169
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;->mDefaultDirectoryList:Landroid/database/MatrixCursor;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 176
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    .line 177
    const-string/jumbo v2, "Other"

    aput-object v2, v1, v6

    .line 178
    aput-object v4, v1, v7

    .line 179
    aput-object v4, v1, v8

    .line 175
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;->mDefaultDirectoryList:Landroid/database/MatrixCursor;

    return-object v0
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 20

    .prologue
    .line 114
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;->mDirectorySearchMode:I

    if-nez v2, :cond_0

    .line 115
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;->getDefaultDirectories()Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    .line 118
    :cond_0
    new-instance v18, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;->RESULT_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 119
    .local v18, "result":Landroid/database/MatrixCursor;
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 120
    .local v8, "context":Landroid/content/Context;
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 122
    .local v17, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;->mDirectorySearchMode:I

    packed-switch v2, :pswitch_data_0

    .line 129
    new-instance v2, Ljava/lang/RuntimeException;

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported directory search mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;->mDirectorySearchMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;->mLocalInvisibleDirectoryEnabled:Z

    if-eqz v2, :cond_2

    const/4 v5, 0x0

    .line 133
    :goto_0
    const/4 v9, 0x0

    .line 135
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader$DirectoryQuery;->URI:Landroid/net/Uri;

    .line 136
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader$DirectoryQuery;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v7, "_id"

    const/4 v6, 0x0

    .line 135
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 137
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_4

    .line 158
    if-eqz v9, :cond_1

    .line 159
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_1
    return-object v18

    .line 125
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_2
    const-string/jumbo v5, "_id!=1"

    .local v5, "selection":Ljava/lang/String;
    goto :goto_0

    .line 149
    .end local v5    # "selection":Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .local v10, "directoryId":J
    .local v12, "directoryType":Ljava/lang/String;
    .local v15, "packageName":Ljava/lang/String;
    .local v19, "typeResourceId":I
    :catch_0
    move-exception v14

    .line 150
    .local v14, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot obtain directory type from package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v12    # "directoryType":Ljava/lang/String;
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    const/4 v2, 0x3

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 154
    .local v13, "displayName":Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 155
    .local v16, "photoSupport":I
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v12, v2, v3

    const/4 v3, 0x2

    aput-object v13, v2, v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 140
    .end local v10    # "directoryId":J
    .end local v13    # "displayName":Ljava/lang/String;
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v16    # "photoSupport":I
    .end local v19    # "typeResourceId":I
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 141
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 142
    .restart local v10    # "directoryId":J
    const/4 v12, 0x0

    .line 143
    .restart local v12    # "directoryType":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 144
    .restart local v15    # "packageName":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 145
    .restart local v19    # "typeResourceId":I
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    if-eqz v19, :cond_3

    .line 147
    :try_start_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    .local v12, "directoryType":Ljava/lang/String;
    goto :goto_1

    .line 158
    .end local v10    # "directoryId":J
    .end local v12    # "directoryType":Ljava/lang/String;
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v19    # "typeResourceId":I
    :cond_5
    if-eqz v9, :cond_6

    .line 159
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 163
    :cond_6
    return-object v18

    .line 157
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    .line 158
    if-eqz v9, :cond_7

    .line 159
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 157
    :cond_7
    throw v2

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;->stopLoading()V

    .line 186
    return-void
.end method

.method protected onStartLoading()V
    .locals 4

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 103
    sget-object v1, Landroid/provider/ContactsContract$Directory;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 102
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 104
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;->forceLoad()V

    .line 101
    return-void
.end method

.method protected onStopLoading()V
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 108
    return-void
.end method

.method public setDirectorySearchMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;->mDirectorySearchMode:I

    .line 88
    return-void
.end method

.method public setLocalInvisibleDirectoryEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;->mLocalInvisibleDirectoryEnabled:Z

    .line 96
    return-void
.end method
