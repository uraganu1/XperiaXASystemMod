.class public Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
.super Ljava/lang/Object;
.source "MmsParticipantsInfo.java"


# instance fields
.field mBccList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation
.end field

.field mCcList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation
.end field

.field mFrom:Lcom/sonyericsson/conversations/model/Participant;

.field private final mHasMultipleRecipiants:Z

.field mToList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mToList:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mCcList:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mBccList:Ljava/util/ArrayList;

    .line 43
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 44
    .local v8, "id":J
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v3, "addr"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 46
    .local v1, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 48
    .local v7, "c":Landroid/database/Cursor;
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "address"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v0, "type"

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 52
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 53
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 54
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, "address":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 57
    .local v10, "type":I
    sparse-switch v10, :sswitch_data_0

    goto :goto_0

    .line 68
    :sswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mBccList:Ljava/util/ArrayList;

    new-instance v3, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v3, v6}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 76
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "address":Ljava/lang/String;
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v10    # "type":I
    :catchall_0
    move-exception v0

    .line 77
    if-eqz v7, :cond_0

    .line 78
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 76
    :cond_0
    throw v0

    .line 59
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v6    # "address":Ljava/lang/String;
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v10    # "type":I
    :sswitch_1
    :try_start_1
    new-instance v0, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v0, v6}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mFrom:Lcom/sonyericsson/conversations/model/Participant;

    goto :goto_0

    .line 62
    :sswitch_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mToList:Ljava/util/ArrayList;

    new-instance v3, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v3, v6}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    :sswitch_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mCcList:Ljava/util/ArrayList;

    new-instance v3, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v3, v6}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    .end local v6    # "address":Ljava/lang/String;
    .end local v10    # "type":I
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->internalGetAllRecipientsCount(Landroid/content/Context;)I

    move-result v0

    if-le v0, v11, :cond_3

    move v0, v11

    :goto_1
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mHasMultipleRecipiants:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    if-eqz v7, :cond_2

    .line 78
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 42
    :cond_2
    return-void

    :cond_3
    move v0, v12

    .line 75
    goto :goto_1

    .line 57
    nop

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_0
        0x82 -> :sswitch_3
        0x89 -> :sswitch_1
        0x97 -> :sswitch_2
    .end sparse-switch
.end method

.method private static getMyNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    const-string/jumbo v1, "phone"

    .line 147
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 149
    .local v0, "telephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private internalGetAllRecipientsCount(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 123
    .local v0, "all":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonyericsson/conversations/model/Participant;>;"
    iget-object v3, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mToList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 124
    iget-object v3, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mCcList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 125
    iget-object v3, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mBccList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 127
    iget-object v3, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mFrom:Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    iget-object v3, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mFrom:Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 131
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->getMyNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "myNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 133
    new-instance v2, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v2, v1}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    .line 134
    .local v2, "participantSelf":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 135
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    return v3

    .line 139
    .end local v2    # "participantSelf":Lcom/sonyericsson/conversations/model/Participant;
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v3

    return v3
.end method


# virtual methods
.method public getAll(Landroid/content/Context;Z)Ljava/util/Set;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "excludeSelf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 91
    .local v0, "all":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonyericsson/conversations/model/Participant;>;"
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mFrom:Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mToList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 93
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mCcList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 94
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mBccList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 96
    if-eqz p2, :cond_0

    .line 97
    invoke-static {p1}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->getMyNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "myNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    new-instance v2, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v2, v1}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 102
    .end local v1    # "myNumber":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getCcRecipients()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mCcList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSender()Lcom/sonyericsson/conversations/model/Participant;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mFrom:Lcom/sonyericsson/conversations/model/Participant;

    return-object v0
.end method

.method public getToRecipients()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mToList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasMultipleRecipients()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->mHasMultipleRecipiants:Z

    return v0
.end method
