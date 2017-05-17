.class public Lcom/android/incallui/StatusBarNotifier;
.super Ljava/lang/Object;
.source "StatusBarNotifier.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/CallList$CallUpdateListener;
.implements Lcom/android/incallui/AudioModeProvider$AudioModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/StatusBarNotifier$1;
    }
.end annotation


# instance fields
.field private mCallId:Ljava/lang/String;

.field private mCallState:I

.field private final mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

.field private final mContactInfoUpdatedListener:Lcom/android/incallui/ContactInfoCache$ContactInfoUpdatedListener;

.field private final mContext:Landroid/content/Context;

.field private mCurrentNotification:I

.field private mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

.field private mIsMuteChanged:Z

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mSavedContactInfoPhoto:Landroid/graphics/drawable/Drawable;

.field private mSavedContent:I

.field private mSavedContentTitle:Ljava/lang/String;

.field private mSavedIcon:I

.field private mSavedLargeIcon:Landroid/graphics/Bitmap;

.field private mSavedLargeIconResourcesId:I


# direct methods
.method static synthetic -wrap0(Lcom/android/incallui/StatusBarNotifier;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0
    .param p1, "originalCall"    # Lcom/android/incallui/Call;
    .param p2, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->buildAndSendNotification(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/incallui/StatusBarNotifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->handleContactInfoUpdated()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactInfoCache"    # Lcom/android/incallui/ContactInfoCache;

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput v2, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    .line 88
    iput v2, p0, Lcom/android/incallui/StatusBarNotifier;->mCallState:I

    .line 89
    iput v2, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedIcon:I

    .line 90
    iput v2, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContent:I

    .line 94
    iput v2, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedLargeIconResourcesId:I

    .line 96
    iput-boolean v2, p0, Lcom/android/incallui/StatusBarNotifier;->mIsMuteChanged:Z

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    .line 873
    new-instance v0, Lcom/android/incallui/StatusBarNotifier$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/StatusBarNotifier$1;-><init>(Lcom/android/incallui/StatusBarNotifier;)V

    .line 872
    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContactInfoUpdatedListener:Lcom/android/incallui/ContactInfoCache$ContactInfoUpdatedListener;

    .line 102
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iput-object p1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/android/incallui/StatusBarNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    .line 106
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 105
    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    .line 107
    iput v2, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    .line 108
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->addListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    .line 111
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContactInfoUpdatedListener:Lcom/android/incallui/ContactInfoCache$ContactInfoUpdatedListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/ContactInfoCache;->addContactInfoUpdatedListener(Lcom/android/incallui/ContactInfoCache$ContactInfoUpdatedListener;)V

    .line 101
    return-void
.end method

.method private addAcceptUpgradeRequestAction(Landroid/app/Notification$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 695
    const-string/jumbo v1, "Will show \"accept upgrade\" action in the incoming call Notification"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 698
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.incallui.ACTION_ACCEPT_VIDEO_UPGRADE_REQUEST"

    .line 697
    invoke-static {v1, v2}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 699
    .local v0, "acceptVideoPendingIntent":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0321

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 694
    return-void
.end method

.method private addAnswerAction(Landroid/app/Notification$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 625
    const-string/jumbo v1, "Will show \"answer\" action in the incoming call Notification"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 628
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.incallui.ACTION_ANSWER_VOICE_INCOMING_CALL"

    .line 627
    invoke-static {v1, v2}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 630
    .local v0, "answerVoicePendingIntent":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0355

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 629
    const v2, 0x7f020039

    invoke-virtual {p1, v2, v1, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 624
    return-void
.end method

.method private addDismissAction(Landroid/app/Notification$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 635
    const-string/jumbo v1, "Will show \"dismiss\" action in the incoming call Notification"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 638
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.incallui.ACTION_DECLINE_INCOMING_CALL"

    invoke-static {v1, v2}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 640
    .local v0, "declinePendingIntent":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0322

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 639
    const v2, 0x7f02003a

    invoke-virtual {p1, v2, v1, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 634
    return-void
.end method

.method private addDismissActionForVideoCall(Landroid/app/Notification$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 685
    const-string/jumbo v1, "Will show \"dismiss\" video call action in the incoming call Notification"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 688
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.incallui.ACTION_DECLINE_INCOMING_CALL"

    invoke-static {v1, v2}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 690
    .local v0, "declinePendingIntent":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0322

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 689
    const v2, 0x7f02003a

    invoke-virtual {p1, v2, v1, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 684
    return-void
.end method

.method private addDismissUpgradeRequestAction(Landroid/app/Notification$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 704
    const-string/jumbo v1, "Will show \"dismiss upgrade\" action in the incoming call Notification"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 707
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.incallui.ACTION_DECLINE_VIDEO_UPGRADE_REQUEST"

    .line 706
    invoke-static {v1, v2}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 708
    .local v0, "declineVideoPendingIntent":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0322

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 703
    return-void
.end method

.method private addHangupAction(Landroid/app/Notification$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 645
    const-string/jumbo v1, "Will show \"hang-up\" action in the ongoing active call Notification"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 648
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.incallui.ACTION_HANG_UP_ONGOING_CALL"

    invoke-static {v1, v2}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 650
    .local v0, "hangupPendingIntent":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v2, 0x7f0b031e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 649
    const v2, 0x7f020040

    invoke-virtual {p1, v2, v1, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 644
    return-void
.end method

.method private addMuteAction(Landroid/app/Notification$Builder;)V
    .locals 5
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 713
    const-string/jumbo v3, "Will show \"Mute\" action in the call Notification"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 715
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v0

    .line 716
    .local v0, "isMuteEnabled":Z
    if-eqz v0, :cond_0

    const v2, 0x7f020042

    .line 718
    .local v2, "muteButtonResId":I
    :goto_0
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    .line 719
    const-string/jumbo v4, "com.sonymobile.incallui.ACTION_SET_MUTE_FROM_NOTIFICATION"

    .line 718
    invoke-static {v3, v4}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 720
    .local v1, "muteButtonPendingIntent":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v4, 0x7f0b033d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v2, v3, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 712
    return-void

    .line 717
    .end local v1    # "muteButtonPendingIntent":Landroid/app/PendingIntent;
    .end local v2    # "muteButtonResId":I
    :cond_0
    const v2, 0x7f020041

    .restart local v2    # "muteButtonResId":I
    goto :goto_0
.end method

.method private addPersonReference(Landroid/app/Notification$Builder;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .param p2, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v2, 0x0

    .line 483
    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    const-string/jumbo v0, "tel"

    .line 487
    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 486
    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_0
.end method

.method private addVideoCallAction(Landroid/app/Notification$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 655
    const-string/jumbo v1, "Will show \"video\" action in the incoming call Notification"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 658
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.incallui.ACTION_ANSWER_VIDEO_INCOMING_CALL"

    .line 657
    invoke-static {v1, v2}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 660
    .local v0, "answerVideoPendingIntent":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v2, 0x7f0b031f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 659
    const v2, 0x7f02003b

    invoke-virtual {p1, v2, v1, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 654
    return-void
.end method

.method private buildAndSendNotification(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 17
    .param p1, "originalCall"    # Lcom/android/incallui/Call;
    .param p2, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 236
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/incallui/StatusBarNotifier;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/incallui/Call;

    move-result-object v10

    .line 237
    .local v10, "call":Lcom/android/incallui/Call;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    invoke-virtual {v10}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    .line 242
    .local v7, "state":I
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->isRichDataCall()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    if-ne v7, v2, :cond_1

    .line 243
    return-void

    .line 238
    .end local v7    # "state":I
    :cond_0
    return-void

    .line 247
    .restart local v7    # "state":I
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/incallui/StatusBarNotifier;->getIconToDisplay(Lcom/android/incallui/Call;)I

    move-result v3

    .line 248
    .local v3, "iconResId":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v10}, Lcom/android/incallui/StatusBarNotifier;->getLargeIconToDisplay(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/Call;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 249
    .local v5, "largeIcon":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/incallui/StatusBarNotifier;->getContentString(Lcom/android/incallui/Call;)I

    move-result v4

    .line 250
    .local v4, "contentResId":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v10}, Lcom/android/incallui/StatusBarNotifier;->getContentTitle(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v6

    .line 252
    .local v6, "contentTitle":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v2

    .line 253
    const/16 v16, 0x3

    .line 252
    move/from16 v0, v16

    if-ne v2, v0, :cond_4

    const/4 v14, 0x1

    .line 255
    .local v14, "isVideoUpgradeRequest":Z
    :goto_0
    const/4 v2, 0x4

    if-eq v7, v2, :cond_2

    .line 256
    const/4 v2, 0x5

    if-ne v7, v2, :cond_5

    .line 257
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 260
    :cond_3
    const/4 v8, 0x1

    .local v8, "notificationType":I
    :goto_2
    move-object/from16 v2, p0

    .line 263
    invoke-direct/range {v2 .. v8}, Lcom/android/incallui/StatusBarNotifier;->checkForChangeAndSaveData(IILandroid/graphics/Bitmap;Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_7

    .line 265
    return-void

    .line 252
    .end local v8    # "notificationType":I
    .end local v14    # "isVideoUpgradeRequest":Z
    :cond_4
    const/4 v14, 0x0

    .restart local v14    # "isVideoUpgradeRequest":Z
    goto :goto_0

    .line 255
    :cond_5
    if-eqz v14, :cond_3

    goto :goto_1

    .line 258
    :cond_6
    const/4 v8, 0x2

    .line 257
    .restart local v8    # "notificationType":I
    goto :goto_2

    .line 268
    :cond_7
    if-eqz v5, :cond_8

    .line 269
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/incallui/StatusBarNotifier;->getRoundedIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 273
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 274
    .local v11, "contentText":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v10}, Lcom/android/incallui/Call;->getSubId()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v13

    .line 277
    .local v13, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v13, :cond_9

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v16, " ("

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v16, ")"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 284
    .end local v13    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/StatusBarNotifier;->getNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object v9

    .line 287
    .local v9, "builder":Landroid/app/Notification$Builder;
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/StatusBarNotifier;->createLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object v12

    .line 288
    .local v12, "inCallPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v9, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 292
    const/4 v2, 0x2

    if-ne v8, v2, :cond_a

    .line 293
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12, v10}, Lcom/android/incallui/StatusBarNotifier;->configureFullScreenIntent(Landroid/app/Notification$Builder;Landroid/app/PendingIntent;Lcom/android/incallui/Call;)V

    .line 295
    const-string/jumbo v2, "call"

    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 299
    :cond_a
    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 300
    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 301
    invoke-virtual {v9, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 302
    invoke-virtual {v9, v5}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/SomcInCallUiUtils;->getPrimaryColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 305
    if-eqz v14, :cond_d

    .line 306
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 307
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/incallui/StatusBarNotifier;->addDismissUpgradeRequestAction(Landroid/app/Notification$Builder;)V

    .line 308
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/incallui/StatusBarNotifier;->addAcceptUpgradeRequestAction(Landroid/app/Notification$Builder;)V

    .line 320
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v9, v1, v10}, Lcom/android/incallui/StatusBarNotifier;->addPersonReference(Landroid/app/Notification$Builder;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/Call;)V

    .line 325
    invoke-virtual {v9}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v15

    .line 326
    .local v15, "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    if-eq v2, v8, :cond_c

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Previous notification already showing - cancelling "

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 328
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    move/from16 v16, v0

    .line 327
    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 331
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Displaying notification for "

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v8, v15}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 333
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    .line 334
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/incallui/StatusBarNotifier;->mIsMuteChanged:Z

    .line 231
    return-void

    .line 314
    .end local v15    # "notification":Landroid/app/Notification;
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v7, v9}, Lcom/android/incallui/StatusBarNotifier;->createIncomingCallNotification(Lcom/android/incallui/Call;ILandroid/app/Notification$Builder;)V

    .line 315
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/incallui/StatusBarNotifier;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const/4 v2, 0x3

    if-ne v7, v2, :cond_b

    .line 316
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/incallui/StatusBarNotifier;->addMuteAction(Landroid/app/Notification$Builder;)V

    goto/16 :goto_3
.end method

.method private checkForChangeAndSaveData(IILandroid/graphics/Bitmap;Ljava/lang/String;II)Z
    .locals 3
    .param p1, "icon"    # I
    .param p2, "content"    # I
    .param p3, "largeIcon"    # Landroid/graphics/Bitmap;
    .param p4, "contentTitle"    # Ljava/lang/String;
    .param p5, "state"    # I
    .param p6, "notificationType"    # I

    .prologue
    .line 423
    if-eqz p4, :cond_0

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContentTitle:Ljava/lang/String;

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 424
    :cond_0
    if-nez p4, :cond_7

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContentTitle:Ljava/lang/String;

    if-eqz v2, :cond_7

    const/4 v0, 0x1

    .line 427
    .local v0, "contentTitleChanged":Z
    :goto_0
    iget v2, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedIcon:I

    if-ne v2, p1, :cond_1

    iget v2, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContent:I

    if-eq v2, p2, :cond_8

    :cond_1
    const/4 v1, 0x1

    .line 433
    :goto_1
    iget v2, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    if-eq v2, p6, :cond_3

    .line 434
    iget v2, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    if-nez v2, :cond_2

    .line 435
    const-string/jumbo v2, "Showing notification for first time."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    :cond_2
    const/4 v1, 0x1

    .line 440
    :cond_3
    iget-boolean v2, p0, Lcom/android/incallui/StatusBarNotifier;->mIsMuteChanged:Z

    if-eqz v2, :cond_4

    .line 441
    const-string/jumbo v2, "Mute state changed. Update notification"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    const/4 v1, 0x1

    .line 445
    :cond_4
    iput p1, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedIcon:I

    .line 446
    iput p2, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContent:I

    .line 447
    iput p5, p0, Lcom/android/incallui/StatusBarNotifier;->mCallState:I

    .line 448
    iput-object p3, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedLargeIcon:Landroid/graphics/Bitmap;

    .line 449
    iput-object p4, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContentTitle:Ljava/lang/String;

    .line 451
    if-eqz v1, :cond_5

    .line 452
    const-string/jumbo v2, "Data changed.  Showing notification"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    :cond_5
    return v1

    .line 423
    .end local v0    # "contentTitleChanged":Z
    :cond_6
    const/4 v0, 0x1

    .restart local v0    # "contentTitleChanged":Z
    goto :goto_0

    .line 424
    .end local v0    # "contentTitleChanged":Z
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "contentTitleChanged":Z
    goto :goto_0

    .line 428
    :cond_8
    iget v2, p0, Lcom/android/incallui/StatusBarNotifier;->mCallState:I

    if-ne v2, p5, :cond_1

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedLargeIcon:Landroid/graphics/Bitmap;

    if-ne v2, p3, :cond_1

    .line 429
    move v1, v0

    .local v1, "retval":Z
    goto :goto_1
.end method

.method static clearAllCallNotifications(Landroid/content/Context;)V
    .locals 3
    .param p0, "backupContext"    # Landroid/content/Context;

    .prologue
    .line 167
    const-class v1, Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 168
    const-string/jumbo v2, "Something terrible happened. Clear all InCall notifications"

    .line 167
    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string/jumbo v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 172
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 173
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 166
    return-void
.end method

.method private configureFullScreenIntent(Landroid/app/Notification$Builder;Landroid/app/PendingIntent;Lcom/android/incallui/Call;)V
    .locals 5
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v4, 0x1

    .line 734
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "- Setting fullScreenIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 735
    invoke-virtual {p1, p2, v4}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 764
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 765
    .local v0, "callList":Lcom/android/incallui/CallList;
    invoke-virtual {p3}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    .line 766
    invoke-virtual {p3}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 767
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-nez v2, :cond_0

    .line 768
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 767
    :cond_0
    const/4 v1, 0x1

    .line 771
    :goto_0
    if-eqz v1, :cond_1

    .line 772
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "configureFullScreenIntent: call-waiting or dsda incoming call! force relaunch. Active sub:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 773
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveSubId()I

    move-result v3

    .line 772
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 777
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 728
    :cond_1
    return-void

    .line 765
    :cond_2
    const/4 v1, 0x1

    .local v1, "isCallWaiting":Z
    goto :goto_0

    .line 769
    .end local v1    # "isCallWaiting":Z
    :cond_3
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveSubId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallList;->isAnyOtherSubActive(I)Z

    move-result v1

    .local v1, "isCallWaiting":Z
    goto :goto_0

    .line 766
    .end local v1    # "isCallWaiting":Z
    :cond_4
    const/4 v1, 0x0

    .local v1, "isCallWaiting":Z
    goto :goto_0
.end method

.method private createIncomingCallNotification(Lcom/android/incallui/Call;ILandroid/app/Notification$Builder;)V
    .locals 8
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "state"    # I
    .param p3, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    .line 345
    if-ne p2, v4, :cond_5

    .line 348
    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 349
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 353
    :goto_0
    const-string/jumbo v0, ""

    .line 355
    .local v0, "contentText":Ljava/lang/String;
    if-eq p2, v5, :cond_0

    if-ne p2, v6, :cond_7

    .line 357
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 358
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0284

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 370
    :cond_1
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 371
    invoke-static {}, Lcom/android/incallui/SomcInCallUiUtils;->isSipPhone()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 377
    :cond_2
    :goto_2
    invoke-virtual {p3, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 380
    if-eq p2, v4, :cond_3

    .line 381
    if-ne p2, v7, :cond_b

    .line 383
    :cond_3
    invoke-direct {p0, p3}, Lcom/android/incallui/StatusBarNotifier;->addHangupAction(Landroid/app/Notification$Builder;)V

    .line 344
    :cond_4
    :goto_3
    return-void

    .line 351
    .end local v0    # "contentText":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 360
    .restart local v0    # "contentText":Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0313

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 362
    :cond_7
    if-ne p2, v7, :cond_8

    .line 364
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0312

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 365
    :cond_8
    if-ne p2, v4, :cond_9

    .line 366
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0310

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 367
    :cond_9
    const/4 v2, 0x6

    if-ne p2, v2, :cond_1

    .line 368
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0b030b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 372
    :cond_a
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSubId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 373
    .local v1, "phoneId":I
    const/4 v2, -0x1

    if-eq v2, v1, :cond_2

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSubId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/incallui/StatusBarNotifier;->getSimDisplayName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 382
    .end local v1    # "phoneId":I
    :cond_b
    invoke-static {p2}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v2

    .line 380
    if-nez v2, :cond_3

    .line 384
    if-eq p2, v5, :cond_c

    if-ne p2, v6, :cond_4

    .line 385
    :cond_c
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 386
    invoke-direct {p0, p3}, Lcom/android/incallui/StatusBarNotifier;->addDismissActionForVideoCall(Landroid/app/Notification$Builder;)V

    .line 392
    invoke-direct {p0, p3}, Lcom/android/incallui/StatusBarNotifier;->addVideoCallAction(Landroid/app/Notification$Builder;)V

    goto :goto_3

    .line 395
    :cond_d
    invoke-direct {p0, p3}, Lcom/android/incallui/StatusBarNotifier;->addDismissAction(Landroid/app/Notification$Builder;)V

    .line 396
    invoke-direct {p0, p3}, Lcom/android/incallui/StatusBarNotifier;->addAnswerAction(Landroid/app/Notification$Builder;)V

    goto :goto_3
.end method

.method private createLaunchPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 793
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(ZZ)Landroid/content/Intent;

    move-result-object v1

    .line 801
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 803
    .local v0, "inCallPendingIntent":Landroid/app/PendingIntent;
    return-object v0
.end method

.method private static createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 811
    new-instance v0, Landroid/content/Intent;

    .line 812
    const-class v1, Lcom/android/incallui/NotificationBroadcastReceiver;

    .line 811
    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 813
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/incallui/Call;
    .locals 2
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v1, 0x0

    .line 608
    if-nez p1, :cond_0

    .line 609
    return-object v1

    .line 611
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 612
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 613
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 615
    :cond_1
    if-nez v0, :cond_2

    .line 616
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 618
    :cond_2
    if-nez v0, :cond_3

    .line 619
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 621
    :cond_3
    return-object v0
.end method

.method private getContentString(Lcom/android/incallui/Call;)I
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/16 v3, 0x8

    .line 581
    const v0, 0x7f0b0310

    .line 582
    .local v0, "resId":I
    invoke-virtual {p1, v3}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    const v0, 0x7f0b0311

    .line 586
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 587
    :cond_1
    invoke-virtual {p1, v3}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 588
    const v0, 0x7f0b0314

    .line 601
    :cond_2
    :goto_0
    return v0

    .line 590
    :cond_3
    const v0, 0x7f0b0313

    goto :goto_0

    .line 592
    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v3, :cond_5

    .line 593
    const v0, 0x7f0b0312

    goto :goto_0

    .line 594
    :cond_5
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 595
    const v0, 0x7f0b030b

    goto :goto_0

    .line 596
    :cond_6
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v1

    .line 597
    const/4 v2, 0x3

    .line 596
    if-ne v1, v2, :cond_2

    .line 598
    const v0, 0x7f0b0316

    goto :goto_0
.end method

.method private getContentTitle(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 3
    .param p1, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 462
    invoke-virtual {p2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 465
    :cond_0
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 466
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 467
    const-string/jumbo v0, ""

    .line 468
    .local v0, "contactNumberDisplayed":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 469
    const v2, 0x7f090014

    .line 468
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 470
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 473
    :cond_1
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    :goto_2
    return-object v1

    .line 463
    .end local v0    # "contactNumberDisplayed":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 467
    :cond_3
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "contactNumberDisplayed":Ljava/lang/String;
    goto :goto_0

    .line 471
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 474
    :cond_5
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    .line 475
    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 474
    invoke-virtual {v1, v0, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 478
    .end local v0    # "contactNumberDisplayed":Ljava/lang/String;
    :cond_6
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    return-object v1
.end method

.method private getIconToDisplay(Lcom/android/incallui/Call;)I
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 557
    const/high16 v2, 0x400000

    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    .line 558
    .local v1, "supportsVoicePrivacy":Z
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 559
    if-eqz v1, :cond_0

    .line 560
    const v0, 0x7f020135

    .line 574
    .local v0, "resId":I
    :goto_0
    return v0

    .line 562
    .end local v0    # "resId":I
    :cond_0
    const v0, 0x7f020131

    .restart local v0    # "resId":I
    goto :goto_0

    .line 564
    .end local v0    # "resId":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v2

    .line 565
    const/4 v3, 0x3

    .line 564
    if-ne v2, v3, :cond_2

    .line 566
    const v0, 0x7f0200bc

    .restart local v0    # "resId":I
    goto :goto_0

    .line 568
    .end local v0    # "resId":I
    :cond_2
    if-eqz v1, :cond_3

    .line 569
    const v0, 0x7f020134

    .restart local v0    # "resId":I
    goto :goto_0

    .line 571
    .end local v0    # "resId":I
    :cond_3
    const v0, 0x7f02012d

    .restart local v0    # "resId":I
    goto :goto_0
.end method

.method private getLargeIconToDisplay(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/Call;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 499
    const/4 v0, 0x0

    .line 500
    .local v0, "largeIcon":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 502
    .local v1, "resourcesId":I
    invoke-virtual {p2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 505
    :cond_0
    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/incallui/StatusBarNotifier;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 506
    const-string/jumbo v2, "use emergency call icon for large icon"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    const v1, 0x7f02003f

    .line 513
    :cond_1
    :goto_0
    if-eqz v1, :cond_6

    .line 514
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedLargeIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedLargeIconResourcesId:I

    if-ne v2, v1, :cond_5

    .line 515
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedLargeIcon:Landroid/graphics/Bitmap;

    .line 520
    .local v0, "largeIcon":Landroid/graphics/Bitmap;
    :goto_1
    iput-object v4, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContactInfoPhoto:Landroid/graphics/drawable/Drawable;

    .line 530
    .end local v0    # "largeIcon":Landroid/graphics/Bitmap;
    :cond_2
    :goto_2
    return-object v0

    .line 503
    .local v0, "largeIcon":Landroid/graphics/Bitmap;
    :cond_3
    const-string/jumbo v2, "use confernce call icon for large icon"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    const v1, 0x7f02003e

    .line 502
    goto :goto_0

    .line 508
    :cond_4
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getSubId()I

    move-result v2

    iget-object v3, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 509
    const-string/jumbo v2, "use voicemail call icon for large icon"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    const v1, 0x7f020043

    goto :goto_0

    .line 517
    :cond_5
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 518
    .local v0, "largeIcon":Landroid/graphics/Bitmap;
    iput v1, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedLargeIconResourcesId:I

    goto :goto_1

    .line 521
    .local v0, "largeIcon":Landroid/graphics/Bitmap;
    :cond_6
    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_2

    .line 522
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedLargeIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContactInfoPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 523
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedLargeIcon:Landroid/graphics/Bitmap;

    .line 528
    .local v0, "largeIcon":Landroid/graphics/Bitmap;
    :goto_3
    iput v5, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedLargeIconResourcesId:I

    goto :goto_2

    .line 525
    .local v0, "largeIcon":Landroid/graphics/Bitmap;
    :cond_7
    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 526
    .local v0, "largeIcon":Landroid/graphics/Bitmap;
    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContactInfoPhoto:Landroid/graphics/drawable/Drawable;

    goto :goto_3
.end method

.method private getNotificationBuilder()Landroid/app/Notification$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 782
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 783
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 786
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 788
    return-object v0
.end method

.method private getRoundedIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 534
    if-nez p1, :cond_0

    .line 535
    return-object v2

    .line 537
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 538
    const v3, 0x1050006

    .line 537
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 539
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 540
    const v3, 0x1050005

    .line 539
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 541
    .local v1, "width":I
    invoke-static {p1, v1, v0}, Lcom/android/contacts/common/util/BitmapUtil;->getRoundedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private getSimDisplayName(I)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 402
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 403
    .local v0, "si":Landroid/telephony/SubscriptionInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 404
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "SIM1"

    :goto_0
    return-object v1

    .line 405
    :cond_1
    const-string/jumbo v1, "SIM2"

    goto :goto_0

    .line 407
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private handleContactInfoUpdated()V
    .locals 2

    .prologue
    .line 884
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/StatusBarNotifier;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/incallui/Call;

    move-result-object v0

    .line 885
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 886
    invoke-direct {p0, v0}, Lcom/android/incallui/StatusBarNotifier;->showNotification(Lcom/android/incallui/Call;)V

    .line 883
    :cond_0
    return-void
.end method

.method private isEmergencyNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 839
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v1, 0x7f0b036c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private showNotification(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 195
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 196
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 198
    .local v0, "isIncoming":Z
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 199
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 201
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    .line 202
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/android/incallui/CallList;->addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 209
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    new-instance v2, Lcom/android/incallui/StatusBarNotifier$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/StatusBarNotifier$2;-><init>(Lcom/android/incallui/StatusBarNotifier;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    .line 194
    return-void

    .line 195
    .end local v0    # "isIncoming":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "isIncoming":Z
    goto :goto_0

    .line 196
    .end local v0    # "isIncoming":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isIncoming":Z
    goto :goto_0
.end method

.method private updateInCallNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 2
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 183
    const-string/jumbo v1, "updateInCallNotification..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0, p2}, Lcom/android/incallui/StatusBarNotifier;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/incallui/Call;

    move-result-object v0

    .line 187
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0, v0}, Lcom/android/incallui/StatusBarNotifier;->showNotification(Lcom/android/incallui/Call;)V

    .line 182
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/StatusBarNotifier;->cancelNotification()V

    goto :goto_0
.end method


# virtual methods
.method protected cancelNotification()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    iget v0, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    if-eqz v0, :cond_0

    .line 156
    const-string/jumbo v0, "cancelInCall()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 159
    :cond_0
    iput v2, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    .line 154
    return-void
.end method

.method public cleanUp()V
    .locals 1

    .prologue
    .line 863
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->removeListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    .line 862
    return-void
.end method

.method public onAudioMode(I)V
    .locals 0
    .param p1, "newMode"    # I

    .prologue
    .line 844
    return-void
.end method

.method public onCallChanged(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 817
    return-void
.end method

.method public onMute(Z)V
    .locals 2
    .param p1, "muted"    # Z

    .prologue
    .line 849
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIsMuteChanged:Z

    .line 851
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    .line 852
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getCallList()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 850
    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 848
    return-void
.end method

.method public onSessionModificationStateChange(I)V
    .locals 2
    .param p1, "sessionModificationState"    # I

    .prologue
    .line 829
    if-nez p1, :cond_1

    .line 830
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 831
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 828
    :cond_1
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 120
    const-string/jumbo v0, "onStateChange"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iput-object p2, p0, Lcom/android/incallui/StatusBarNotifier;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 122
    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 119
    return-void
.end method

.method public onSupportedAudioMode(I)V
    .locals 0
    .param p1, "modeMask"    # I

    .prologue
    .line 856
    return-void
.end method

.method public tearDown()V
    .locals 2

    .prologue
    .line 894
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContactInfoUpdatedListener:Lcom/android/incallui/ContactInfoCache$ContactInfoUpdatedListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/ContactInfoCache;->removeContactInfoUpdatedListener(Lcom/android/incallui/ContactInfoCache$ContactInfoUpdatedListener;)V

    .line 893
    :cond_0
    return-void
.end method

.method public updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 0
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->updateInCallNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 146
    return-void
.end method
