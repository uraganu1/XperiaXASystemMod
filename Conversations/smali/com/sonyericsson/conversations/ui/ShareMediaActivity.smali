.class public Lcom/sonyericsson/conversations/ui/ShareMediaActivity;
.super Landroid/app/Activity;
.source "ShareMediaActivity.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$OnResultListener;


# instance fields
.field private mDialog:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private checkFilePathAndCreateTempFiles(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 140
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v10, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string/jumbo v12, "android.intent.action.SEND"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 143
    const-string/jumbo v12, "android.intent.extra.STREAM"

    invoke-virtual {p1, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 144
    .local v5, "extraStream":Landroid/net/Uri;
    if-nez v5, :cond_0

    .line 145
    return-void

    .line 147
    :cond_0
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .end local v5    # "extraStream":Landroid/net/Uri;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 161
    .local v2, "cr":Landroid/content/ContentResolver;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v7, "newUriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "contentUri$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 163
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/sonyericsson/conversations/util/FileUtil;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 164
    .local v8, "path":Ljava/lang/String;
    if-nez v8, :cond_7

    invoke-static {p0, v0}, Lcom/sonyericsson/conversations/util/DrmUtil;->isForwardable(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 169
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    .line 168
    invoke-static {v12}, Lcom/sonyericsson/conversations/util/MediaUtil;->getFileExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, "extension":Ljava/lang/String;
    const-string/jumbo v12, "mms"

    invoke-static {p0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getTempDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v13

    .line 170
    invoke-static {v12, v4, v13}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v9

    .line 172
    .local v9, "tempFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->deleteOnExit()V

    .line 173
    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 174
    .local v6, "is":Ljava/io/InputStream;
    invoke-static {v6, v9}, Lcom/sonyericsson/conversations/util/FileUtil;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 175
    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 178
    .end local v4    # "extension":Ljava/lang/String;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v9    # "tempFile":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 179
    .local v3, "e":Ljava/io/IOException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Failed to create a temporary file. "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 148
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "contentUri$iterator":Ljava/util/Iterator;
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "newUriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v8    # "path":Ljava/lang/String;
    :cond_3
    const-string/jumbo v12, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 149
    const-string/jumbo v12, "android.intent.extra.STREAM"

    invoke-virtual {p1, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 150
    const-string/jumbo v12, "android.intent.extra.STREAM"

    invoke-virtual {p1, v12}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 151
    .local v11, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 152
    :cond_4
    return-void

    .line 154
    :cond_5
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 157
    .end local v11    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_6
    return-void

    .line 165
    .restart local v0    # "contentUri":Landroid/net/Uri;
    .restart local v1    # "contentUri$iterator":Ljava/util/Iterator;
    .restart local v2    # "cr":Landroid/content/ContentResolver;
    .restart local v7    # "newUriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v8    # "path":Ljava/lang/String;
    :cond_7
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 184
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v8    # "path":Ljava/lang/String;
    :cond_8
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

    .line 185
    const-string/jumbo v13, "android.intent.extra.STREAM"

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Parcelable;

    invoke-virtual {p1, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 139
    :cond_9
    :goto_2
    return-void

    .line 186
    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_9

    .line 187
    const-string/jumbo v12, "android.intent.extra.STREAM"

    invoke-virtual {p1, v12, v7}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private exitToMainActivity(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 193
    const-string/jumbo v6, "activity"

    invoke-virtual {p0, v6}, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 194
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v3

    .line 195
    .local v3, "appTaskList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$AppTask;>;"
    new-instance v4, Landroid/content/ComponentName;

    const-class v6, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-direct {v4, p0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    .local v4, "componentName":Landroid/content/ComponentName;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "appTask$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$AppTask;

    .line 197
    .local v1, "appTask":Landroid/app/ActivityManager$AppTask;
    invoke-virtual {v1}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v5

    .line 198
    .local v5, "info":Landroid/app/ActivityManager$RecentTaskInfo;
    if-eqz v5, :cond_0

    iget-object v6, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v6, :cond_0

    iget-object v6, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 200
    invoke-virtual {v1}, Landroid/app/ActivityManager$AppTask;->finishAndRemoveTask()V

    .line 201
    sget-boolean v6, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v6, :cond_0

    .line 202
    const-string/jumbo v6, "Finish previous ConversationListActivity"

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 206
    .end local v1    # "appTask":Landroid/app/ActivityManager$AppTask;
    .end local v5    # "info":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_1
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 207
    const/high16 v6, 0x10000000

    invoke-virtual {p1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->startActivity(Landroid/content/Intent;)V

    .line 209
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->finish()V

    .line 191
    return-void
.end method

.method private handleShareIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 92
    const-string/jumbo v0, "address"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const-string/jumbo v0, "person_number"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    .line 92
    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/persist/IntentData;->isXmsToScheme(Ljava/lang/String;)Z

    move-result v0

    .line 92
    if-eqz v0, :cond_1

    .line 95
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->exitToMainActivity(Landroid/content/Intent;)V

    .line 90
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->showConversationPicker()V

    goto :goto_0
.end method

.method private isShareMediaAction(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 224
    const-string/jumbo v0, "android.intent.action.SEND"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    const-string/jumbo v0, "android.intent.action.SENDTO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 224
    if-nez v0, :cond_0

    .line 226
    const-string/jumbo v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 224
    if-nez v0, :cond_0

    .line 227
    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 224
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private sendGaEventShareMedia(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "mimeType":Ljava/lang/String;
    const-string/jumbo v3, "person_number"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 121
    const-string/jumbo v0, "direct_share"

    .line 122
    .local v0, "action":Ljava/lang/String;
    :goto_0
    move-object v1, v2

    .line 123
    .local v1, "label":Ljava/lang/String;
    invoke-static {v2}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isAudio(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 124
    const-string/jumbo v1, "audio"

    .line 136
    :cond_0
    :goto_1
    const-string/jumbo v3, "share"

    invoke-static {v3, v0, v1}, Lcom/sonymobile/conversations/analytics/Analytics;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void

    .line 121
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "label":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "regular_share"

    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_0

    .line 125
    .restart local v1    # "label":Ljava/lang/String;
    :cond_2
    invoke-static {v2}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isGifImage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 126
    const-string/jumbo v1, "gif"

    goto :goto_1

    .line 127
    :cond_3
    invoke-static {v2}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isImage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 128
    const-string/jumbo v1, "image"

    goto :goto_1

    .line 129
    :cond_4
    invoke-static {v2}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isVideo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 130
    const-string/jumbo v1, "video"

    goto :goto_1

    .line 131
    :cond_5
    invoke-static {v2}, Lcom/sonyericsson/conversations/util/VCardUtil;->isVCardMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 132
    const-string/jumbo v1, "contact"

    goto :goto_1

    .line 133
    :cond_6
    const-string/jumbo v3, "text/x-vCalendar"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    const-string/jumbo v1, "calendar_event"

    goto :goto_1
.end method

.method private shouldCheckPermission(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 102
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.SEND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "mimeType":Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isAudio(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isImage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isVideo(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    invoke-static {v1}, Lcom/sonyericsson/conversations/util/VCardUtil;->isVCardMimeType(Ljava/lang/String;)Z

    move-result v2

    .line 107
    if-eqz v2, :cond_2

    .line 109
    :cond_0
    return v3

    .line 111
    .end local v1    # "mimeType":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    return v3

    .line 115
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private showConversationPicker()V
    .locals 4

    .prologue
    .line 213
    const-class v2, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "fragClassName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 215
    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->mDialog:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    .line 216
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->mDialog:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->mDialog:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->mDialog:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    invoke-virtual {v2, p0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->setOnResultListener(Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$OnResultListener;)V

    .line 212
    return-void

    .line 217
    :cond_0
    new-instance v2, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    invoke-direct {v2}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->mDialog:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    .line 218
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->mDialog:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    invoke-virtual {v2, v0, v1}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->finish()V

    .line 248
    return-void
.end method

.method public onConversationSelected(Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 3
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 232
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->mDialog:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->dismiss()V

    .line 234
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 235
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 237
    return-void

    .line 239
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    const-string/jumbo v1, "android.intent.action.SENDTO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    :cond_1
    const-string/jumbo v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 244
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->exitToMainActivity(Landroid/content/Intent;)V

    .line 231
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "newIntent"    # Landroid/content/Intent;

    .prologue
    .line 53
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 54
    .local v0, "intent":Landroid/content/Intent;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->isShareMediaAction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    invoke-static {p0}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 61
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-class v3, Lcom/sonyericsson/conversations/permission/PermissionControllerActivity;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 62
    .local v1, "outIntent":Landroid/content/Intent;
    const-string/jumbo v2, "return-activity"

    .line 63
    const/4 v3, 0x1

    .line 62
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->startActivity(Landroid/content/Intent;)V

    .line 65
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->finish()V

    .line 66
    return-void

    .line 53
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "outIntent":Landroid/content/Intent;
    :cond_0
    move-object v0, p1

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 55
    :cond_1
    const-string/jumbo v2, "null Intent or not a ShareMedia Intent"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->finish()V

    .line 57
    return-void

    .line 69
    :cond_2
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->shouldCheckPermission(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 70
    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 69
    invoke-static {p0, v2}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 84
    :cond_3
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->sendGaEventShareMedia(Landroid/content/Intent;)V

    .line 85
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->checkFilePathAndCreateTempFiles(Landroid/content/Intent;)V

    .line 86
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->handleShareIntent(Landroid/content/Intent;)V

    .line 52
    :goto_1
    return-void

    .line 72
    :cond_4
    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 73
    new-instance v3, Lcom/sonyericsson/conversations/ui/ShareMediaActivity$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/conversations/ui/ShareMediaActivity$1;-><init>(Lcom/sonyericsson/conversations/ui/ShareMediaActivity;)V

    .line 71
    invoke-static {p0, v2, v3}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->handleOptionalPermissionRequest(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;)V

    goto :goto_1
.end method

.method public onNewMessageClicked()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->mDialog:Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;->dismiss()V

    .line 255
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->exitToMainActivity(Landroid/content/Intent;)V

    .line 253
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 48
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 44
    return-void
.end method
