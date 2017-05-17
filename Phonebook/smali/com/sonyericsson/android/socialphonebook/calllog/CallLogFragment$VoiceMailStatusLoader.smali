.class Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;
.super Landroid/os/AsyncTask;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceMailStatusLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;",
        ">;"
    }
.end annotation


# instance fields
.field public final VOICEMAIL_CONTENT_STATUS_PROJECTION:[Ljava/lang/String;

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)V
    .locals 3
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1127
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 1128
    const-string/jumbo v1, "source_package"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1129
    const-string/jumbo v1, "configuration_state"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1130
    const-string/jumbo v1, "data_channel_state"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1131
    const-string/jumbo v1, "notification_channel_state"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 1132
    const-string/jumbo v1, "settings_uri"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1133
    const-string/jumbo v1, "voicemail_access_uri"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1127
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;->VOICEMAIL_CONTENT_STATUS_PROJECTION:[Ljava/lang/String;

    .line 1122
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1138
    const/4 v7, 0x0

    .line 1139
    .local v7, "cursorVoicemailStatus":Landroid/database/Cursor;
    new-instance v8, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;

    invoke-direct {v8}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;-><init>()V

    .line 1142
    .local v8, "voicemailState":Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1143
    sget-object v1, Landroid/provider/VoicemailContract$Status;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;->VOICEMAIL_CONTENT_STATUS_PROJECTION:[Ljava/lang/String;

    .line 1144
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1142
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1146
    .local v7, "cursorVoicemailStatus":Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 1165
    if-eqz v7, :cond_0

    .line 1166
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1147
    :cond_0
    return-object v8

    .line 1150
    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1152
    const/4 v0, 0x5

    .line 1151
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1153
    .local v6, "actionUri":Landroid/net/Uri;
    invoke-static {v7}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper;->getTopPriorityOverallState(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    move-result-object v0

    iput-object v0, v8, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;->overallState:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    .line 1155
    invoke-virtual {v8, v7}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;->setShouldFilterVoicemail(Landroid/database/Cursor;)V

    .line 1156
    iget-object v0, v8, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;->overallState:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    if-eqz v0, :cond_4

    .line 1157
    iget-object v0, v8, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;->overallState:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->setActionUri(Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1165
    .end local v6    # "actionUri":Landroid/net/Uri;
    :cond_2
    :goto_0
    if-eqz v7, :cond_3

    .line 1166
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1163
    :cond_3
    return-object v8

    .line 1159
    .restart local v6    # "actionUri":Landroid/net/Uri;
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "OverallState is null"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1164
    .end local v6    # "actionUri":Landroid/net/Uri;
    .end local v7    # "cursorVoicemailStatus":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 1165
    if-eqz v7, :cond_5

    .line 1166
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1164
    :cond_5
    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1137
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;->doInBackground([Ljava/lang/Void;)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;)V
    .locals 5
    .param p1, "voicemailState"    # Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;

    .prologue
    const/16 v4, 0x8

    .line 1173
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e0079

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1174
    .local v1, "voicemailStatusView":Landroid/view/View;
    iget-object v2, p1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;->overallState:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    if-eqz v2, :cond_3

    .line 1175
    iget-object v2, p1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;->overallState:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    sget-object v3, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->NO_CONNECTION:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    if-eq v2, v3, :cond_0

    .line 1176
    iget-object v2, p1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;->overallState:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    sget-object v3, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->NO_DATA:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    if-ne v2, v3, :cond_2

    .line 1177
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1180
    const v2, 0x7f0e007b

    .line 1179
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1181
    .local v0, "callVoicemailButton":Landroid/widget/Button;
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader$1;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader$1;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1194
    .end local v0    # "callVoicemailButton":Landroid/widget/Button;
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    iget-boolean v3, p1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;->shouldFilterVoicemail:Z

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-set3(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;Z)Z

    .line 1195
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get11(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Z

    move-result v2

    .line 1196
    iget-boolean v3, p1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;->orangeVvmExistsAndIsConfigured:Z

    .line 1195
    if-eq v2, v3, :cond_1

    .line 1197
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    .line 1198
    iget-boolean v3, p1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;->orangeVvmExistsAndIsConfigured:Z

    .line 1197
    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-set2(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;Z)Z

    .line 1199
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1172
    :cond_1
    :goto_1
    return-void

    .line 1192
    :cond_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1202
    :cond_3
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "voicemailState"    # Ljava/lang/Object;

    .prologue
    .line 1172
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;

    .end local p1    # "voicemailState":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;->onPostExecute(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;)V

    return-void
.end method
