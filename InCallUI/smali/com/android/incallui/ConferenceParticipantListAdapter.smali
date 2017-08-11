.class public Lcom/android/incallui/ConferenceParticipantListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ConferenceParticipantListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;,
        Lcom/android/incallui/ConferenceParticipantListAdapter$ContactLookupCallback;,
        Lcom/android/incallui/ConferenceParticipantListAdapter$1;,
        Lcom/android/incallui/ConferenceParticipantListAdapter$2;
    }
.end annotation


# instance fields
.field private mConferenceParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private final mContext:Landroid/content/Context;

.field private mDisconnectListener:Landroid/view/View$OnClickListener;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mListView:Landroid/widget/ListView;

.field private mParentCanSeparate:Z

.field private final mParticipantsByCallId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSeparateListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p4, "contactPhotoManager"    # Lcom/android/contacts/common/ContactPhotoManager;

    .prologue
    .line 224
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 160
    new-instance v0, Lcom/android/incallui/ConferenceParticipantListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/ConferenceParticipantListAdapter$1;-><init>(Lcom/android/incallui/ConferenceParticipantListAdapter;)V

    iput-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mDisconnectListener:Landroid/view/View$OnClickListener;

    .line 172
    new-instance v0, Lcom/android/incallui/ConferenceParticipantListAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/ConferenceParticipantListAdapter$2;-><init>(Lcom/android/incallui/ConferenceParticipantListAdapter;)V

    iput-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mSeparateListener:Landroid/view/View$OnClickListener;

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/List;

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    .line 227
    iput-object p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mListView:Landroid/widget/ListView;

    .line 228
    iput-object p2, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContext:Landroid/content/Context;

    .line 229
    iput-object p3, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 230
    iput-object p4, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 225
    return-void
.end method

.method private refreshView(Ljava/lang/String;)V
    .locals 7
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 300
    iget-object v5, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 301
    .local v0, "first":I
    iget-object v5, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 303
    .local v1, "last":I
    const/4 v2, 0x0

    .local v2, "position":I
    :goto_0
    sub-int v5, v1, v0

    if-gt v2, v5, :cond_0

    .line 304
    iget-object v5, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 305
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 306
    .local v3, "rowCallId":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 307
    add-int v5, v2, v0

    iget-object v6, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v5, v4, v6}, Lcom/android/incallui/ConferenceParticipantListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 299
    .end local v3    # "rowCallId":Ljava/lang/String;
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    return-void

    .line 303
    .restart local v3    # "rowCallId":Ljava/lang/String;
    .restart local v4    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private final setCallerInfoForRow(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callerName"    # Ljava/lang/String;
    .param p3, "callerNumber"    # Ljava/lang/String;
    .param p4, "callerNumberType"    # Ljava/lang/String;
    .param p5, "lookupKey"    # Ljava/lang/String;
    .param p6, "photoUri"    # Landroid/net/Uri;
    .param p7, "thisRowCanSeparate"    # Z
    .param p8, "thisRowCanDisconnect"    # Z
    .param p9, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 391
    const v1, 0x7f0f0036

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 392
    .local v2, "photoView":Landroid/widget/ImageView;
    const v1, 0x7f0f0037

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 393
    .local v8, "nameTextView":Landroid/widget/TextView;
    const v1, 0x7f0f0038

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 395
    .local v9, "numberTextView":Landroid/widget/TextView;
    const v1, 0x7f0f0039

    .line 394
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 396
    .local v10, "numberTypeTextView":Landroid/widget/TextView;
    const v1, 0x7f0f003b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 397
    .local v7, "endButton":Landroid/view/View;
    const v1, 0x7f0f003a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 399
    .local v11, "separateButton":Landroid/view/View;
    if-eqz p8, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 400
    if-eqz p8, :cond_2

    .line 401
    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mDisconnectListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    :goto_1
    if-eqz p7, :cond_3

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    .line 407
    if-eqz p7, :cond_4

    .line 408
    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mSeparateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    :goto_3
    if-nez p9, :cond_6

    .line 416
    if-nez p6, :cond_0

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "android.resource://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 418
    const-string/jumbo v3, "/"

    .line 417
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 418
    const v3, 0x7f020021

    .line 417
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p6

    .line 421
    :cond_0
    if-eqz p6, :cond_5

    const/4 v6, 0x0

    .line 424
    :goto_4
    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v3, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    .line 430
    :goto_5
    invoke-virtual {v8, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 434
    const/16 v1, 0x8

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 435
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    :goto_6
    return-void

    .line 399
    :cond_1
    const/16 v1, 0x8

    goto :goto_0

    .line 403
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 406
    :cond_3
    const/16 v1, 0x8

    goto :goto_2

    .line 410
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 422
    :cond_5
    new-instance v6, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    const/4 v1, 0x1

    move-object/from16 v0, p5

    invoke-direct {v6, p2, v0, v1}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .local v6, "imageRequest":Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    goto :goto_4

    .line 426
    .end local v6    # "imageRequest":Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    :cond_6
    move-object/from16 v0, p9

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v1}, Lcom/android/incallui/SomcInCallUiUtils;->setRoundedDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 437
    :cond_7
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 438
    invoke-static {p3}, Lcom/android/incallui/SomcInCallUiUtils;->formatNoBidiString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 439
    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 441
    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6
.end method

.method private sortParticipantList()V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/List;

    new-instance v1, Lcom/android/incallui/ConferenceParticipantListAdapter$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/ConferenceParticipantListAdapter$3;-><init>(Lcom/android/incallui/ConferenceParticipantListAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 501
    return-void
.end method

.method private updateParticipantInfo(Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/Call;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 452
    .local p1, "conferenceParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/Call;>;"
    iget-object v12, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    .line 453
    .local v0, "cache":Lcom/android/incallui/ContactInfoCache;
    const/4 v10, 0x0

    .line 454
    .local v10, "newParticipantAdded":Z
    new-instance v9, Ljava/util/HashSet;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v9, v12}, Ljava/util/HashSet;-><init>(I)V

    .line 457
    .local v9, "newCallIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "call$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/Call;

    .line 458
    .local v1, "call":Lcom/android/incallui/Call;
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    .line 459
    .local v3, "callId":Ljava/lang/String;
    invoke-virtual {v9, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 460
    invoke-virtual {v0, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v4

    .line 461
    .local v4, "contactCache":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-nez v4, :cond_0

    .line 462
    iget-object v13, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContext:Landroid/content/Context;

    .line 463
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v12

    const/4 v14, 0x4

    if-ne v12, v14, :cond_1

    const/4 v12, 0x1

    .line 462
    :goto_1
    invoke-static {v13, v1, v12}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v4

    .line 466
    :cond_0
    iget-object v12, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    invoke-virtual {v12, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 467
    iget-object v12, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    invoke-virtual {v12, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    .line 468
    .local v11, "participantInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    invoke-virtual {v11, v1}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->setCall(Lcom/android/incallui/Call;)V

    .line 469
    invoke-virtual {v11, v4}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->setContactCacheEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0

    .line 463
    .end local v11    # "participantInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 471
    :cond_2
    const/4 v10, 0x1

    .line 472
    new-instance v11, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    invoke-direct {v11, p0, v1, v4}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;-><init>(Lcom/android/incallui/ConferenceParticipantListAdapter;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 473
    .restart local v11    # "participantInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    iget-object v12, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    iget-object v12, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 480
    .end local v1    # "call":Lcom/android/incallui/Call;
    .end local v3    # "callId":Ljava/lang/String;
    .end local v4    # "contactCache":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v11    # "participantInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    :cond_3
    iget-object v12, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 481
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;>;>;"
    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 482
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 483
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 484
    .local v6, "existingCallId":Ljava/lang/String;
    invoke-virtual {v9, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 485
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    .line 486
    .local v7, "existingInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    iget-object v12, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 487
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 491
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;>;"
    .end local v6    # "existingCallId":Ljava/lang/String;
    .end local v7    # "existingInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    :cond_5
    if-eqz v10, :cond_6

    .line 493
    invoke-direct {p0}, Lcom/android/incallui/ConferenceParticipantListAdapter;->sortParticipantList()V

    .line 495
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceParticipantListAdapter;->notifyDataSetChanged()V

    .line 451
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 275
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 325
    if-nez p2, :cond_1

    .line 326
    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040005

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 329
    .local v2, "result":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    .line 330
    .local v13, "participantInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    invoke-virtual {v13}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getCall()Lcom/android/incallui/Call;

    move-result-object v12

    .line 331
    .local v12, "call":Lcom/android/incallui/Call;
    invoke-virtual {v13}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getContactCacheEntry()Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v10

    .line 333
    .local v10, "contactCache":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v11

    .line 337
    .local v11, "cache":Lcom/android/incallui/ContactInfoCache;
    invoke-virtual {v13}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->isCacheLookupComplete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 338
    invoke-virtual {v13}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getCall()Lcom/android/incallui/Call;

    move-result-object v3

    .line 339
    invoke-virtual {v13}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_2

    const/4 v1, 0x1

    .line 340
    :goto_1
    new-instance v4, Lcom/android/incallui/ConferenceParticipantListAdapter$ContactLookupCallback;

    invoke-direct {v4, p0}, Lcom/android/incallui/ConferenceParticipantListAdapter$ContactLookupCallback;-><init>(Lcom/android/incallui/ConferenceParticipantListAdapter;)V

    .line 338
    invoke-virtual {v11, v3, v1, v4}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    .line 343
    :cond_0
    iget-boolean v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParentCanSeparate:Z

    if-eqz v1, :cond_3

    invoke-virtual {v12}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    .line 344
    const/16 v3, 0x1000

    .line 343
    invoke-virtual {v1, v3}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v8

    .line 345
    :goto_2
    invoke-virtual {v12}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    .line 346
    const/16 v3, 0x2000

    .line 345
    invoke-virtual {v1, v3}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v9

    .line 348
    .local v9, "thisRowCanDisconnect":Z
    iget-object v3, v10, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    iget-object v4, v10, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    iget-object v5, v10, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    .line 349
    iget-object v6, v10, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupKey:Ljava/lang/String;

    iget-object v7, v10, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    move-object v1, p0

    .line 348
    invoke-direct/range {v1 .. v10}, Lcom/android/incallui/ConferenceParticipantListAdapter;->setCallerInfoForRow(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 354
    invoke-virtual {v12}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 356
    return-object v2

    .line 327
    .end local v2    # "result":Landroid/view/View;
    .end local v9    # "thisRowCanDisconnect":Z
    .end local v10    # "contactCache":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v11    # "cache":Lcom/android/incallui/ContactInfoCache;
    .end local v12    # "call":Lcom/android/incallui/Call;
    .end local v13    # "participantInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    :cond_1
    move-object/from16 v2, p2

    .restart local v2    # "result":Landroid/view/View;
    goto :goto_0

    .line 339
    .restart local v10    # "contactCache":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .restart local v11    # "cache":Lcom/android/incallui/ContactInfoCache;
    .restart local v12    # "call":Lcom/android/incallui/Call;
    .restart local v13    # "participantInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 343
    :cond_3
    const/4 v8, 0x0

    .local v8, "thisRowCanSeparate":Z
    goto :goto_2
.end method

.method public refreshCall(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 284
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "callId":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    iget-object v2, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    .line 288
    .local v1, "participantInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    invoke-virtual {v1, p1}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->setCall(Lcom/android/incallui/Call;)V

    .line 289
    invoke-direct {p0, v0}, Lcom/android/incallui/ConferenceParticipantListAdapter;->refreshView(Ljava/lang/String;)V

    .line 283
    .end local v1    # "participantInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    :cond_0
    return-void
.end method

.method updateContactInfo(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 366
    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    .line 368
    .local v0, "participantInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    invoke-virtual {v0, p2}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->setContactCacheEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 369
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->setCacheLookupComplete(Z)V

    .line 370
    invoke-direct {p0, p1}, Lcom/android/incallui/ConferenceParticipantListAdapter;->refreshView(Ljava/lang/String;)V

    .line 365
    .end local v0    # "participantInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    :cond_0
    return-void
.end method

.method public updateParticipants(Ljava/util/List;Z)V
    .locals 0
    .param p2, "parentCanSeparate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/Call;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "conferenceParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/Call;>;"
    iput-boolean p2, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParentCanSeparate:Z

    .line 242
    invoke-direct {p0, p1}, Lcom/android/incallui/ConferenceParticipantListAdapter;->updateParticipantInfo(Ljava/util/List;)V

    .line 240
    return-void
.end method
