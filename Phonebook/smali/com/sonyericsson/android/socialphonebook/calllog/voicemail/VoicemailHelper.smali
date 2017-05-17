.class public Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper;
.super Ljava/lang/Object;
.source "VoicemailHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;,
        Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;,
        Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;
    }
.end annotation


# static fields
.field public static final CONFIGURATION_STATE_INDEX:I = 0x1

.field public static final DATA_CHANNEL_STATE_INDEX:I = 0x2

.field public static final NOTIFICATION_CHANNEL_STATE_INDEX:I = 0x3

.field private static final QUERY_PARAM_KEY_SOURCE_PACKAGE:Ljava/lang/String; = "source_package"

.field public static final VOICEMAIL_ACCESS_URI_INDEX:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOverallState(III)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;
    .locals 2
    .param p0, "configurationState"    # I
    .param p1, "dataChannelState"    # I
    .param p2, "notificationChannelState"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 137
    if-nez p0, :cond_5

    .line 139
    if-nez p1, :cond_2

    .line 141
    if-nez p2, :cond_0

    .line 142
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->OK:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    return-object v0

    .line 143
    :cond_0
    if-ne p2, v1, :cond_1

    .line 144
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->NO_DETAILED_NOTIFICATION:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    return-object v0

    .line 145
    :cond_1
    if-ne p2, v0, :cond_7

    .line 146
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->NO_NOTIFICATIONS:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    return-object v0

    .line 148
    :cond_2
    if-ne p1, v0, :cond_7

    .line 150
    if-nez p2, :cond_3

    .line 151
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->NO_DATA:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    return-object v0

    .line 152
    :cond_3
    if-ne p2, v1, :cond_4

    .line 153
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->MESSAGE_WAITING:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    return-object v0

    .line 154
    :cond_4
    if-ne p2, v0, :cond_7

    .line 155
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->NO_CONNECTION:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    return-object v0

    .line 158
    :cond_5
    if-ne p0, v1, :cond_6

    .line 161
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->INVITE_FOR_CONFIGURATION:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    return-object v0

    .line 162
    :cond_6
    if-ne p0, v0, :cond_7

    .line 165
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->NOT_CONFIGURED:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    return-object v0

    .line 168
    :cond_7
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->INVALID:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    return-object v0
.end method

.method public static getSourcePackageFromVoicemailUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "uriStr"    # Ljava/lang/String;

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 205
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 208
    .local v1, "uri":Landroid/net/Uri;
    const-string/jumbo v2, "source_package"

    .line 207
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    return-object v0
.end method

.method public static getTopPriorityOverallState(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;
    .locals 5
    .param p0, "stateCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v0, "overallStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;>;"
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    :cond_0
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 184
    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 185
    const/4 v3, 0x3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 183
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper;->getOverallState(III)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    return-object v1

    .line 194
    :cond_2
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$1;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 199
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    return-object v1
.end method
