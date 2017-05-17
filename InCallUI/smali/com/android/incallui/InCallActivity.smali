.class public Lcom/android/incallui/InCallActivity;
.super Landroid/app/Activity;
.source "InCallActivity.java"

# interfaces
.implements Lcom/android/incallui/FragmentDisplayManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallActivity$TabListener;,
        Lcom/android/incallui/InCallActivity$SuppServSwitchFailureNotificationReceiver;,
        Lcom/android/incallui/InCallActivity$1;,
        Lcom/android/incallui/InCallActivity$2;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final TAB_COUNT_ONE:I

.field private final TAB_COUNT_TWO:I

.field private final TAB_POSITION_FIRST:I

.field private mAnimateDialpadOnShow:Z

.field private mAnswerFragment:Lcom/android/incallui/AnswerFragment;

.field private mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

.field private mCallCardFragment:Lcom/android/incallui/CallCardFragment;

.field private mChildFragmentManager:Landroid/app/FragmentManager;

.field private mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialpadFragment:Lcom/android/incallui/DialpadFragment;

.field private mDismissKeyguard:Z

.field private mDsdaTab:[Landroid/app/ActionBar$Tab;

.field private mDsdaTabAdd:[Z

.field private mDtmfText:Ljava/lang/String;

.field private final mInCallFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mInCallOrientationEventListener:Lcom/android/incallui/InCallOrientationEventListener;

.field private mIsLandscape:Z

.field private mIsVisible:Z

.field private mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

.field private mReceiver:Lcom/android/incallui/InCallActivity$SuppServSwitchFailureNotificationReceiver;

.field private mSelectAcctListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

.field private mShowDialpadRequest:I

.field private mShowPostCharWaitDialogCallId:Ljava/lang/String;

.field private mShowPostCharWaitDialogChars:Ljava/lang/String;

.field private mShowPostCharWaitDialogOnResume:Z

.field private mSlideIn:Landroid/view/animation/Animation;

.field private mSlideOut:Landroid/view/animation/Animation;

.field mSlideOutListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;

.field private mSmallAnswerFragment:Lcom/android/incallui/SomcSmallAnswerFragment;

.field private mSmallAnsweringMachineFragment:Lcom/android/incallui/SomcSmallAnsweringMachineFragment;

.field private mSmallCallCardFragment:Lcom/android/incallui/SomcSmallCallCardFragment;

.field private mSmallChildFragmentManager:Landroid/app/FragmentManager;

.field private mSmallEndCallFragment:Lcom/android/incallui/SomcSmallEndCallFragment;

.field private mSomcAnsweringMachineFragment:Lcom/android/incallui/SomcAnsweringMachineFragment;

.field private mSomcCallEndedInteractionFragment:Lcom/android/incallui/SomcCallEndedInteractionFragment;

.field private mSomcSmartCoverManager:Lcom/android/incallui/SomcSmartCoverManager;

.field private mVideoCallFragment:Lcom/android/incallui/VideoCallFragment;


# direct methods
.method static synthetic -get0(Lcom/android/incallui/InCallActivity;)Lcom/android/incallui/AnswerFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/incallui/InCallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->onDialogDismissed()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/incallui/InCallActivity;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "show"    # Z
    .param p3, "executeImmediately"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/InCallActivity;->showFragment(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/InCallActivity;->TAG:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 79
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 114
    iput v2, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    .line 130
    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mDismissKeyguard:Z

    .line 132
    iput v2, p0, Lcom/android/incallui/InCallActivity;->TAB_COUNT_ONE:I

    .line 133
    iput v1, p0, Lcom/android/incallui/InCallActivity;->TAB_COUNT_TWO:I

    .line 134
    iput v0, p0, Lcom/android/incallui/InCallActivity;->TAB_POSITION_FIRST:I

    .line 136
    new-array v0, v1, [Landroid/app/ActionBar$Tab;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDsdaTab:[Landroid/app/ActionBar$Tab;

    .line 137
    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDsdaTabAdd:[Z

    .line 161
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallFragments:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Lcom/android/incallui/InCallActivity$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$1;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mSlideOutListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    .line 171
    new-instance v0, Lcom/android/incallui/InCallActivity$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$2;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mSelectAcctListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    .line 79
    return-void

    .line 137
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private addDsdaTab(I)V
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1223
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1224
    .local v0, "bar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v1

    .line 1226
    .local v1, "tabCount":I
    if-ge v1, p1, :cond_0

    .line 1227
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mDsdaTab:[Landroid/app/ActionBar$Tab;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 1231
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mDsdaTabAdd:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    .line 1232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addDsdaTab, subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " tab count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1222
    return-void

    .line 1229
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mDsdaTab:[Landroid/app/ActionBar$Tab;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2, p1, v3}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    goto :goto_0
.end method

.method private createNewExtFragmentForTag(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 848
    const-string/jumbo v0, "tag_answering_machine_fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    new-instance v0, Lcom/android/incallui/SomcAnsweringMachineFragment;

    invoke-direct {v0}, Lcom/android/incallui/SomcAnsweringMachineFragment;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mSomcAnsweringMachineFragment:Lcom/android/incallui/SomcAnsweringMachineFragment;

    .line 850
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSomcAnsweringMachineFragment:Lcom/android/incallui/SomcAnsweringMachineFragment;

    return-object v0

    .line 851
    :cond_0
    const-string/jumbo v0, "tag_somc_small_answer_fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 852
    new-instance v0, Lcom/android/incallui/SomcSmallAnswerFragment;

    invoke-direct {v0}, Lcom/android/incallui/SomcSmallAnswerFragment;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mSmallAnswerFragment:Lcom/android/incallui/SomcSmallAnswerFragment;

    .line 853
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSmallAnswerFragment:Lcom/android/incallui/SomcSmallAnswerFragment;

    return-object v0

    .line 854
    :cond_1
    const-string/jumbo v0, "tag_somc_small_callcard_fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 855
    new-instance v0, Lcom/android/incallui/SomcSmallCallCardFragment;

    invoke-direct {v0}, Lcom/android/incallui/SomcSmallCallCardFragment;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mSmallCallCardFragment:Lcom/android/incallui/SomcSmallCallCardFragment;

    .line 856
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSmallCallCardFragment:Lcom/android/incallui/SomcSmallCallCardFragment;

    return-object v0

    .line 857
    :cond_2
    const-string/jumbo v0, "tag_somc_small_answering_machine_fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 858
    new-instance v0, Lcom/android/incallui/SomcSmallAnsweringMachineFragment;

    invoke-direct {v0}, Lcom/android/incallui/SomcSmallAnsweringMachineFragment;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mSmallAnsweringMachineFragment:Lcom/android/incallui/SomcSmallAnsweringMachineFragment;

    .line 859
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSmallAnsweringMachineFragment:Lcom/android/incallui/SomcSmallAnsweringMachineFragment;

    return-object v0

    .line 861
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private createNewFragmentForTag(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 794
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->createNewExtFragmentForTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 795
    .local v0, "extFragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 796
    return-object v0

    .line 798
    :cond_0
    const-string/jumbo v1, "tag_dialpad_fragment"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 799
    new-instance v1, Lcom/android/incallui/DialpadFragment;

    invoke-direct {v1}, Lcom/android/incallui/DialpadFragment;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    .line 800
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    return-object v1

    .line 801
    :cond_1
    const-string/jumbo v1, "tag_answer_fragment"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 802
    new-instance v1, Lcom/android/incallui/AnswerFragment;

    invoke-direct {v1}, Lcom/android/incallui/AnswerFragment;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    .line 803
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    return-object v1

    .line 804
    :cond_2
    const-string/jumbo v1, "tag_conference_manager_fragment"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 805
    new-instance v1, Lcom/android/incallui/ConferenceManagerFragment;

    invoke-direct {v1}, Lcom/android/incallui/ConferenceManagerFragment;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    .line 806
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    return-object v1

    .line 807
    :cond_3
    const-string/jumbo v1, "tag_callcard_fragment"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 808
    new-instance v1, Lcom/android/incallui/CallCardFragment;

    invoke-direct {v1}, Lcom/android/incallui/CallCardFragment;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    .line 809
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    return-object v1

    .line 811
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected fragment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getContainerIdForExtFragment(Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const v1, 0x7f0f0073

    .line 884
    const-string/jumbo v0, "tag_answering_machine_fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    return v1

    .line 886
    :cond_0
    const-string/jumbo v0, "tag_somc_small_answer_fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 887
    const v0, 0x7f0f00df

    return v0

    .line 888
    :cond_1
    const-string/jumbo v0, "tag_somc_small_callcard_fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 889
    return v1

    .line 890
    :cond_2
    const-string/jumbo v0, "tag_somc_small_answering_machine_fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 891
    const v0, 0x7f0f00e0

    return v0

    .line 893
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method private getContainerIdForFragment(Ljava/lang/String;)I
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const v3, 0x7f0f0073

    const v2, 0x7f0f0032

    .line 828
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->getContainerIdForExtFragment(Ljava/lang/String;)I

    move-result v0

    .line 829
    .local v0, "containerForExtFragment":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 830
    return v0

    .line 832
    :cond_0
    const-string/jumbo v1, "tag_dialpad_fragment"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 833
    return v2

    .line 834
    :cond_1
    const-string/jumbo v1, "tag_answer_fragment"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 835
    return v2

    .line 836
    :cond_2
    const-string/jumbo v1, "tag_conference_manager_fragment"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 837
    return v3

    .line 838
    :cond_3
    const-string/jumbo v1, "tag_callcard_fragment"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 839
    return v3

    .line 841
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected fragment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getExtFragmentManagerForTag(Ljava/lang/String;)Landroid/app/FragmentManager;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 868
    const-string/jumbo v0, "tag_answering_machine_fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0

    .line 870
    :cond_0
    const-string/jumbo v0, "tag_somc_small_answer_fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 871
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSmallChildFragmentManager:Landroid/app/FragmentManager;

    return-object v0

    .line 872
    :cond_1
    const-string/jumbo v0, "tag_somc_small_callcard_fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 873
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0

    .line 874
    :cond_2
    const-string/jumbo v0, "tag_somc_small_answering_machine_fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 875
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSmallChildFragmentManager:Landroid/app/FragmentManager;

    return-object v0

    .line 877
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected fragment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getFragmentManagerForTag(Ljava/lang/String;)Landroid/app/FragmentManager;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 815
    const-string/jumbo v0, "tag_dialpad_fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mChildFragmentManager:Landroid/app/FragmentManager;

    return-object v0

    .line 817
    :cond_0
    const-string/jumbo v0, "tag_answer_fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 818
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mChildFragmentManager:Landroid/app/FragmentManager;

    return-object v0

    .line 819
    :cond_1
    const-string/jumbo v0, "tag_conference_manager_fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 820
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0

    .line 821
    :cond_2
    const-string/jumbo v0, "tag_callcard_fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 822
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0

    .line 824
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->getExtFragmentManagerForTag(Ljava/lang/String;)Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method private handleDialerKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleDialerKeyDown: keyCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v0, p2}, Lcom/android/incallui/DialpadFragment;->onDialerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 625
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasPendingDialogs()Z
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragment;->hasPendingDialogs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 459
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallCsRedialHandler;->getInstance()Lcom/android/incallui/InCallCsRedialHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallCsRedialHandler;->hasPendingDialogs()Z

    move-result v0

    .line 458
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initializeDsdaSwitchTab()V
    .locals 9

    .prologue
    .line 1183
    sget v4, Lcom/android/incallui/InCallServiceImpl;->sPhoneCount:I

    .line 1184
    .local v4, "phoneCount":I
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1185
    .local v0, "bar":Landroid/app/ActionBar;
    new-array v3, v4, [Landroid/view/View;

    .line 1186
    .local v3, "mDsdaTabLayout":[Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0011

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1187
    .local v2, "icons":Landroid/content/res/TypedArray;
    const v6, 0x7f0b036f

    const v7, 0x7f0b0370

    filled-new-array {v6, v7}, [I

    move-result-object v5

    .line 1189
    .local v5, "subString":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 1190
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    .line 1191
    const v7, 0x7f040022

    const/4 v8, 0x0

    .line 1190
    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    aput-object v6, v3, v1

    .line 1193
    aget-object v6, v3, v1

    const v7, 0x7f0f0079

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1194
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1193
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1196
    aget-object v6, v3, v1

    const v7, 0x7f0f007a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1197
    aget v7, v5, v1

    .line 1196
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1199
    iget-object v6, p0, Lcom/android/incallui/InCallActivity;->mDsdaTab:[Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v7

    aget-object v8, v3, v1

    invoke-virtual {v7, v8}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v7

    .line 1200
    new-instance v8, Lcom/android/incallui/InCallActivity$TabListener;

    invoke-direct {v8, p0, v1}, Lcom/android/incallui/InCallActivity$TabListener;-><init>(Lcom/android/incallui/InCallActivity;I)V

    .line 1199
    invoke-virtual {v7, v8}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v7

    aput-object v7, v6, v1

    .line 1189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1182
    :cond_0
    return-void
.end method

.method private internalResolveIntent(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 641
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v9, "android.intent.action.MAIN"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 648
    const-string/jumbo v9, "InCallActivity.show_dialpad"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 653
    const-string/jumbo v9, "InCallActivity.show_dialpad"

    invoke-virtual {p1, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 654
    .local v7, "showDialpad":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "- internalResolveIntent: SHOW_DIALPAD_EXTRA: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 656
    invoke-direct {p0, v7}, Lcom/android/incallui/InCallActivity;->relaunchedFromDialer(Z)V

    .line 659
    .end local v7    # "showDialpad":Z
    :cond_0
    const/4 v4, 0x0

    .line 660
    .local v4, "newOutgoingCall":Z
    const-string/jumbo v9, "InCallActivity.new_outgoing_call"

    invoke-virtual {p1, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 661
    const-string/jumbo v9, "InCallActivity.new_outgoing_call"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 662
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 663
    .local v1, "call":Lcom/android/incallui/Call;
    if-nez v1, :cond_1

    .line 664
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 667
    :cond_1
    const/4 v3, 0x0

    .line 668
    .local v3, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 669
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 671
    .end local v3    # "extras":Landroid/os/Bundle;
    :cond_2
    if-nez v3, :cond_3

    .line 673
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 676
    :cond_3
    const/4 v8, 0x0

    .line 677
    .local v8, "touchPoint":Landroid/graphics/Point;
    invoke-static {}, Lcom/android/contacts/common/interactions/TouchPointManager;->getInstance()Lcom/android/contacts/common/interactions/TouchPointManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/contacts/common/interactions/TouchPointManager;->hasValidPoint()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 679
    invoke-static {}, Lcom/android/contacts/common/interactions/TouchPointManager;->getInstance()Lcom/android/contacts/common/interactions/TouchPointManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/contacts/common/interactions/TouchPointManager;->getPoint()Landroid/graphics/Point;

    move-result-object v8

    .line 688
    .end local v8    # "touchPoint":Landroid/graphics/Point;
    :cond_4
    :goto_0
    invoke-virtual {p0, v11}, Lcom/android/incallui/InCallActivity;->showCallCardFragment(Z)V

    .line 692
    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->isCallWithNoValidAccounts(Lcom/android/incallui/Call;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 693
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 696
    :cond_5
    invoke-virtual {p0, v11}, Lcom/android/incallui/InCallActivity;->dismissKeyguard(Z)V

    .line 697
    const/4 v4, 0x1

    .line 700
    .end local v1    # "call":Lcom/android/incallui/Call;
    :cond_6
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v5

    .line 701
    .local v5, "pendingAccountSelectionCall":Lcom/android/incallui/Call;
    if-eqz v5, :cond_a

    .line 702
    invoke-virtual {p0, v12}, Lcom/android/incallui/InCallActivity;->showCallCardFragment(Z)V

    .line 703
    invoke-virtual {v5}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 707
    .local v3, "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_9

    .line 709
    const-string/jumbo v9, "selectPhoneAccountAccounts"

    .line 708
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 716
    .local v6, "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :goto_1
    iget-object v9, p0, Lcom/android/incallui/InCallActivity;->mSelectAcctListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    .line 715
    const v10, 0x7f0b023e

    .line 714
    invoke-static {v10, v11, v6, v9}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->newInstance(IZLjava/util/List;Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    move-result-object v2

    .line 717
    .local v2, "dialogFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    const-string/jumbo v10, "tag_select_acct_fragment"

    invoke-virtual {v2, v9, v10}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 721
    .end local v2    # "dialogFragment":Landroid/app/DialogFragment;
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v6    # "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_7
    :goto_2
    return-void

    .line 682
    .end local v5    # "pendingAccountSelectionCall":Lcom/android/incallui/Call;
    .restart local v1    # "call":Lcom/android/incallui/Call;
    .restart local v8    # "touchPoint":Landroid/graphics/Point;
    :cond_8
    if-eqz v1, :cond_4

    .line 683
    const-string/jumbo v9, "touchPoint"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    .end local v8    # "touchPoint":Landroid/graphics/Point;
    check-cast v8, Landroid/graphics/Point;

    .local v8, "touchPoint":Landroid/graphics/Point;
    goto :goto_0

    .line 711
    .end local v1    # "call":Lcom/android/incallui/Call;
    .end local v8    # "touchPoint":Landroid/graphics/Point;
    .restart local v3    # "extras":Landroid/os/Bundle;
    .restart local v5    # "pendingAccountSelectionCall":Lcom/android/incallui/Call;
    :cond_9
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .restart local v6    # "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    goto :goto_1

    .line 718
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v6    # "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_a
    if-nez v4, :cond_7

    .line 719
    invoke-virtual {p0, v11}, Lcom/android/incallui/InCallActivity;->showCallCardFragment(Z)V

    goto :goto_2

    .line 640
    .end local v4    # "newOutgoingCall":Z
    .end local v5    # "pendingAccountSelectionCall":Lcom/android/incallui/Call;
    :cond_b
    return-void
.end method

.method private isEnableInCallOrientationEvent(I)Z
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    .line 1320
    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    .line 1321
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 1320
    :cond_0
    :goto_0
    return v0

    .line 1322
    :cond_1
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDialogDismissed()V
    .locals 1

    .prologue
    .line 1161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 1162
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->onErrorDialogDismissed()V

    .line 1163
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onDismissDialog()V

    .line 1160
    return-void
.end method

.method private onExtFragmentAttached(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 433
    instance-of v0, p1, Lcom/android/incallui/SomcCallEndedInteractionFragment;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 434
    check-cast v0, Lcom/android/incallui/SomcCallEndedInteractionFragment;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mSomcCallEndedInteractionFragment:Lcom/android/incallui/SomcCallEndedInteractionFragment;

    .line 447
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallFragments:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/incallui/BaseFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    return-void

    .line 435
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_1
    instance-of v0, p1, Lcom/android/incallui/VideoCallFragment;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 436
    check-cast v0, Lcom/android/incallui/VideoCallFragment;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragment:Lcom/android/incallui/VideoCallFragment;

    goto :goto_0

    .line 437
    :cond_2
    instance-of v0, p1, Lcom/android/incallui/SomcSmallAnswerFragment;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 438
    check-cast v0, Lcom/android/incallui/SomcSmallAnswerFragment;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mSmallAnswerFragment:Lcom/android/incallui/SomcSmallAnswerFragment;

    goto :goto_0

    .line 439
    :cond_3
    instance-of v0, p1, Lcom/android/incallui/SomcSmallCallCardFragment;

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 440
    check-cast v0, Lcom/android/incallui/SomcSmallCallCardFragment;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mSmallCallCardFragment:Lcom/android/incallui/SomcSmallCallCardFragment;

    .line 441
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSmallCallCardFragment:Lcom/android/incallui/SomcSmallCallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/SomcSmallCallCardFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mSmallChildFragmentManager:Landroid/app/FragmentManager;

    goto :goto_0

    .line 442
    :cond_4
    instance-of v0, p1, Lcom/android/incallui/SomcSmallEndCallFragment;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 443
    check-cast v0, Lcom/android/incallui/SomcSmallEndCallFragment;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mSmallEndCallFragment:Lcom/android/incallui/SomcSmallEndCallFragment;

    goto :goto_0

    .line 444
    :cond_5
    instance-of v0, p1, Lcom/android/incallui/SomcSmallAnsweringMachineFragment;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 445
    check-cast v0, Lcom/android/incallui/SomcSmallAnsweringMachineFragment;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mSmallAnsweringMachineFragment:Lcom/android/incallui/SomcSmallAnsweringMachineFragment;

    goto :goto_0
.end method

.method private relaunchedFromDialer(Z)V
    .locals 4
    .param p1, "showDialpad"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 734
    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    .line 735
    iput-boolean v3, p0, Lcom/android/incallui/InCallActivity;->mAnimateDialpadOnShow:Z

    .line 737
    iget v1, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    if-ne v1, v2, :cond_0

    .line 740
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 741
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 742
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    .line 733
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 734
    goto :goto_0
.end method

.method private removeDsdaTab(I)V
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 1236
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1237
    .local v0, "bar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v2

    .line 1239
    .local v2, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1240
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mDsdaTab:[Landroid/app/ActionBar$Tab;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1241
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mDsdaTab:[Landroid/app/ActionBar$Tab;

    aget-object v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->removeTab(Landroid/app/ActionBar$Tab;)V

    .line 1242
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mDsdaTabAdd:[Z

    const/4 v4, 0x0

    aput-boolean v4, v3, p1

    .line 1243
    return-void

    .line 1239
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1246
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeDsdaTab, subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " tab count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1235
    return-void
.end method

.method private setAmVolumeUp(I)V
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 548
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 549
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    :cond_0
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->setRxMuteOff()V

    .line 547
    :cond_1
    return-void
.end method

.method private showDialogs(Z)V
    .locals 1
    .param p1, "isShow"    # Z

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1015
    if-eqz p1, :cond_1

    .line 1016
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1013
    :cond_0
    :goto_0
    return-void

    .line 1018
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    goto :goto_0
.end method

.method private showErrorDialog(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 1136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Show Dialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1138
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    .line 1140
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1142
    new-instance v1, Lcom/android/incallui/InCallActivity$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivity$3;-><init>(Lcom/android/incallui/InCallActivity;)V

    const v2, 0x104000a

    .line 1140
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1147
    new-instance v1, Lcom/android/incallui/InCallActivity$4;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivity$4;-><init>(Lcom/android/incallui/InCallActivity;)V

    .line 1140
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 1154
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1155
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isCoverClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1135
    :cond_0
    return-void
.end method

.method private showFragment(Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "show"    # Z
    .param p3, "executeImmediately"    # Z

    .prologue
    .line 760
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showFragment - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 761
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->getFragmentManagerForTag(Ljava/lang/String;)Landroid/app/FragmentManager;

    move-result-object v0

    .line 763
    .local v0, "fm":Landroid/app/FragmentManager;
    if-nez v0, :cond_0

    .line 764
    sget-object v3, Lcom/android/incallui/InCallActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Fragment manager is null for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 765
    return-void

    .line 768
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 769
    .local v1, "fragment":Landroid/app/Fragment;
    if-nez p2, :cond_1

    if-nez v1, :cond_1

    .line 771
    return-void

    .line 774
    :cond_1
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 775
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    if-eqz p2, :cond_4

    .line 776
    if-nez v1, :cond_3

    .line 777
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->createNewFragmentForTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 778
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->getContainerIdForFragment(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, v1, p1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 786
    :goto_0
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 787
    if-eqz p3, :cond_2

    .line 788
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 790
    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 759
    return-void

    .line 780
    :cond_3
    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 783
    :cond_4
    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method private updateDsdaTabSelection()V
    .locals 5

    .prologue
    .line 1250
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1251
    .local v0, "bar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v1

    .line 1253
    .local v1, "barCount":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 1254
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1249
    :cond_0
    :goto_0
    return-void

    .line 1255
    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 1256
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/CallList;->getPhoneId(I)I

    move-result v2

    .line 1258
    .local v2, "phoneId":I
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_0
.end method


# virtual methods
.method public dismissErrorDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1101
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1102
    const-string/jumbo v0, "Dismiss error dialog"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1103
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1104
    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 1100
    :cond_0
    return-void
.end method

.method public dismissKeyguard(Z)V
    .locals 2
    .param p1, "dismiss"    # Z

    .prologue
    const/high16 v1, 0x400000

    .line 748
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mDismissKeyguard:Z

    if-ne v0, p1, :cond_0

    .line 749
    return-void

    .line 751
    :cond_0
    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->mDismissKeyguard:Z

    .line 752
    if-eqz p1, :cond_1

    .line 753
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 747
    :goto_0
    return-void

    .line 755
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public dismissPendingDialogs()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1109
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 1110
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1111
    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 1113
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    if-eqz v1, :cond_1

    .line 1114
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v1}, Lcom/android/incallui/AnswerFragment;->dismissPendingDialogs()V

    .line 1116
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mSomcAnsweringMachineFragment:Lcom/android/incallui/SomcAnsweringMachineFragment;

    if-eqz v1, :cond_2

    .line 1117
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mSomcAnsweringMachineFragment:Lcom/android/incallui/SomcAnsweringMachineFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SomcAnsweringMachineFragment;->dismissPendingDialogs()V

    .line 1119
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragment:Lcom/android/incallui/VideoCallFragment;

    if-eqz v1, :cond_3

    .line 1120
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mVideoCallFragment:Lcom/android/incallui/VideoCallFragment;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment;->dismissPendingDialogs()V

    .line 1124
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "tag_select_acct_fragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1123
    check-cast v0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    .line 1125
    .local v0, "dialogFragment":Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
    if-eqz v0, :cond_4

    .line 1126
    invoke-virtual {v0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->dismiss()V

    .line 1129
    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallCsRedialHandler;->getInstance()Lcom/android/incallui/InCallCsRedialHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallCsRedialHandler;->dismissPendingDialogs()V

    .line 1108
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1075
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/AnswerFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1077
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public enableInCallOrientationEventListener(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1299
    if-eqz p1, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallOrientationEventListener:Lcom/android/incallui/InCallOrientationEventListener;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallOrientationEventListener;->enable(Z)V

    .line 1298
    :goto_0
    return-void

    .line 1302
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallOrientationEventListener:Lcom/android/incallui/InCallOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/incallui/InCallOrientationEventListener;->disable()V

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "finish().  Dialog showing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->hasPendingDialogs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 463
    :cond_0
    return-void

    .line 464
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallCardFragment()Lcom/android/incallui/CallCardFragment;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    return-object v0
.end method

.method public isCoverClosed()Z
    .locals 1

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSomcSmartCoverManager:Lcom/android/incallui/SomcSmartCoverManager;

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSomcSmartCoverManager:Lcom/android/incallui/SomcSmartCoverManager;

    invoke-virtual {v0}, Lcom/android/incallui/SomcSmartCoverManager;->isCoverClosed()Z

    move-result v0

    return v0

    .line 1050
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDialpadVisible()Z
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadFragment;->isVisible()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVisible()Z
    .locals 1

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsVisible:Z

    return v0
.end method

.method public maybeShowErrorDialogOnDisconnect(Landroid/telecom/DisconnectCause;I)V
    .locals 3
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p2, "preciseCause"    # I

    .prologue
    const/16 v2, 0x8

    .line 1082
    const-string/jumbo v0, "maybeShowErrorDialogOnDisconnect"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1087
    if-ne p2, v2, :cond_0

    .line 1088
    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1089
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1087
    if-eqz v0, :cond_0

    .line 1090
    return-void

    .line 1093
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1081
    :cond_1
    :goto_0
    return-void

    .line 1094
    :cond_2
    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 1095
    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1096
    :cond_3
    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->showErrorDialog(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 495
    const-string/jumbo v1, "onBackPressed"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    invoke-virtual {v1}, Lcom/android/incallui/ConferenceManagerFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 505
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/incallui/DialpadFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 506
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/CallButtonFragment;->displayDialpad(ZZ)V

    .line 507
    return-void

    .line 501
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardFragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 502
    :cond_2
    return-void

    .line 508
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    invoke-virtual {v1}, Lcom/android/incallui/ConferenceManagerFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 509
    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallActivity;->showConferenceFragment(Z)V

    .line 510
    return-void

    .line 514
    :cond_4
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 515
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_5

    .line 516
    const-string/jumbo v1, "Consume Back press for an incoming call"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    return-void

    .line 521
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallActivity;->moveTaskToBack(Z)Z

    .line 494
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 186
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onCreate()...  this = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 192
    const v2, 0x288000

    .line 196
    .local v2, "flags":I
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/Window;->addFlags(I)V

    .line 197
    invoke-static {}, Lcom/android/incallui/InCallServiceImpl;->isDsdaEnabled()Z

    move-result v4

    .line 198
    .local v4, "isDsdaEnabled":Z
    if-eqz v4, :cond_6

    .line 199
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Lcom/android/incallui/InCallActivity;->requestWindowFeature(I)Z

    .line 200
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 201
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 202
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 215
    :cond_0
    :goto_0
    const v7, 0x7f04001f

    invoke-virtual {p0, v7}, Lcom/android/incallui/InCallActivity;->setContentView(I)V

    .line 217
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallPresenter;->hasSmartCoverPresenter()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 218
    invoke-static {}, Lcom/android/incallui/SomcSmartCoverManager;->isStyleCoverFeatureEnabled()Z

    move-result v7

    .line 217
    if-eqz v7, :cond_1

    .line 219
    const-string/jumbo v7, "onCreate : Creating SmartCoverManager"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    new-instance v7, Lcom/android/incallui/SomcSmartCoverManager;

    invoke-direct {v7, p0, p0}, Lcom/android/incallui/SomcSmartCoverManager;-><init>(Landroid/content/Context;Lcom/android/incallui/InCallActivity;)V

    iput-object v7, p0, Lcom/android/incallui/InCallActivity;->mSomcSmartCoverManager:Lcom/android/incallui/SomcSmartCoverManager;

    .line 223
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/incallui/InCallActivity;->internalResolveIntent(Landroid/content/Intent;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v10, :cond_7

    move v7, v8

    :goto_1
    iput-boolean v7, p0, Lcom/android/incallui/InCallActivity;->mIsLandscape:Z

    .line 228
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v7

    if-ne v7, v8, :cond_8

    const/4 v5, 0x1

    .line 231
    .local v5, "isRtl":Z
    :goto_2
    iget-boolean v7, p0, Lcom/android/incallui/InCallActivity;->mIsLandscape:Z

    if-eqz v7, :cond_b

    .line 233
    if-eqz v5, :cond_9

    const v7, 0x7f050006

    .line 232
    :goto_3
    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/incallui/InCallActivity;->mSlideIn:Landroid/view/animation/Animation;

    .line 235
    if-eqz v5, :cond_a

    const v7, 0x7f050009

    .line 234
    :goto_4
    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/incallui/InCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    .line 241
    :goto_5
    iget-object v7, p0, Lcom/android/incallui/InCallActivity;->mSlideIn:Landroid/view/animation/Animation;

    sget-object v8, Lcom/android/phone/common/animation/AnimUtils;->EASE_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 242
    iget-object v7, p0, Lcom/android/incallui/InCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    sget-object v8, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 244
    iget-object v7, p0, Lcom/android/incallui/InCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    iget-object v8, p0, Lcom/android/incallui/InCallActivity;->mSlideOutListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 249
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-class v8, Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 250
    .local v1, "existingFragment":Landroid/app/Fragment;
    if-eqz v1, :cond_2

    .line 251
    check-cast v1, Lcom/android/incallui/DialpadFragment;

    .end local v1    # "existingFragment":Landroid/app/Fragment;
    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    .line 254
    :cond_2
    if-eqz p1, :cond_4

    .line 259
    const-string/jumbo v7, "InCallActivity.show_dialpad"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 260
    const-string/jumbo v7, "InCallActivity.show_dialpad"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 261
    .local v6, "showDialpad":Z
    if-eqz v6, :cond_c

    move v7, v10

    :goto_6
    iput v7, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    .line 262
    iput-boolean v9, p0, Lcom/android/incallui/InCallActivity;->mAnimateDialpadOnShow:Z

    .line 264
    .end local v6    # "showDialpad":Z
    :cond_3
    const-string/jumbo v7, "InCallActivity.dialpad_text"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/incallui/InCallActivity;->mDtmfText:Ljava/lang/String;

    .line 267
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string/jumbo v8, "tag_select_acct_fragment"

    invoke-virtual {v7, v8}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 266
    check-cast v0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    .line 268
    .local v0, "dialogFragment":Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
    if-eqz v0, :cond_4

    .line 269
    iget-object v7, p0, Lcom/android/incallui/InCallActivity;->mSelectAcctListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    invoke-virtual {v0, v7}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->setListener(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)V

    .line 273
    .end local v0    # "dialogFragment":Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
    :cond_4
    new-instance v7, Lcom/android/incallui/InCallOrientationEventListener;

    invoke-direct {v7, p0}, Lcom/android/incallui/InCallOrientationEventListener;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/incallui/InCallActivity;->mInCallOrientationEventListener:Lcom/android/incallui/InCallOrientationEventListener;

    .line 275
    if-eqz v4, :cond_5

    .line 276
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->initializeDsdaSwitchTab()V

    .line 278
    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallPresenter;->clearFullscreen()V

    .line 281
    new-instance v7, Lcom/android/incallui/InCallActivity$SuppServSwitchFailureNotificationReceiver;

    invoke-direct {v7, p0, v12}, Lcom/android/incallui/InCallActivity$SuppServSwitchFailureNotificationReceiver;-><init>(Lcom/android/incallui/InCallActivity;Lcom/android/incallui/InCallActivity$SuppServSwitchFailureNotificationReceiver;)V

    iput-object v7, p0, Lcom/android/incallui/InCallActivity;->mReceiver:Lcom/android/incallui/InCallActivity$SuppServSwitchFailureNotificationReceiver;

    .line 283
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v7, "com.sonymobile.ACTION_SUPP_SERVICE_SWITCH_FAILURE"

    invoke-direct {v3, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 284
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v7, "com.sonymobile.ACTION_SUPP_SERVICE_SWITCH_FAILURE"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    iget-object v7, p0, Lcom/android/incallui/InCallActivity;->mReceiver:Lcom/android/incallui/InCallActivity$SuppServSwitchFailureNotificationReceiver;

    invoke-virtual {p0, v7, v3}, Lcom/android/incallui/InCallActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 287
    const-string/jumbo v7, "onCreate(): exit"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    return-void

    .line 204
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    .end local v5    # "isRtl":Z
    :cond_6
    const/16 v7, 0x9

    invoke-virtual {p0, v7}, Lcom/android/incallui/InCallActivity;->requestWindowFeature(I)Z

    .line 205
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 207
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 208
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActionBar;->hide()V

    goto/16 :goto_0

    :cond_7
    move v7, v9

    .line 225
    goto/16 :goto_1

    .line 228
    :cond_8
    const/4 v5, 0x0

    .restart local v5    # "isRtl":Z
    goto/16 :goto_2

    .line 233
    :cond_9
    const v7, 0x7f050007

    goto/16 :goto_3

    .line 235
    :cond_a
    const v7, 0x7f05000a

    goto/16 :goto_4

    .line 237
    :cond_b
    const v7, 0x7f050005

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/incallui/InCallActivity;->mSlideIn:Landroid/view/animation/Animation;

    .line 238
    const v7, 0x7f050008

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/incallui/InCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    goto/16 :goto_5

    .line 261
    .restart local v6    # "showDialpad":Z
    :cond_c
    const/4 v7, 0x3

    goto/16 :goto_6
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDestroy()...  this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->unsetActivity(Lcom/android/incallui/InCallActivity;)V

    .line 397
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->updateIsChangingConfigurations()V

    .line 398
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSomcSmartCoverManager:Lcom/android/incallui/SomcSmartCoverManager;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSomcSmartCoverManager:Lcom/android/incallui/SomcSmartCoverManager;

    invoke-virtual {v0}, Lcom/android/incallui/SomcSmartCoverManager;->destroy()V

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mReceiver:Lcom/android/incallui/InCallActivity$SuppServSwitchFailureNotificationReceiver;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 402
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 394
    return-void
.end method

.method public onFragmentAttached(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 414
    instance-of v0, p1, Lcom/android/incallui/DialpadFragment;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 415
    check-cast v0, Lcom/android/incallui/DialpadFragment;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    .line 426
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->onExtFragmentAttached(Landroid/app/Fragment;)V

    .line 413
    return-void

    .line 416
    :cond_1
    instance-of v0, p1, Lcom/android/incallui/AnswerFragment;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 417
    check-cast v0, Lcom/android/incallui/AnswerFragment;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    goto :goto_0

    .line 418
    :cond_2
    instance-of v0, p1, Lcom/android/incallui/CallCardFragment;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 419
    check-cast v0, Lcom/android/incallui/CallCardFragment;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    .line 420
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mChildFragmentManager:Landroid/app/FragmentManager;

    goto :goto_0

    .line 421
    :cond_3
    instance-of v0, p1, Lcom/android/incallui/ConferenceManagerFragment;

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 422
    check-cast v0, Lcom/android/incallui/ConferenceManagerFragment;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    goto :goto_0

    .line 423
    :cond_4
    instance-of v0, p1, Lcom/android/incallui/CallButtonFragment;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 424
    check-cast v0, Lcom/android/incallui/CallButtonFragment;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 557
    sparse-switch p1, :sswitch_data_0

    .line 608
    :cond_0
    :goto_0
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/InCallActivity;->handleDialerKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 609
    return v4

    .line 559
    :sswitch_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->handleCallKey()Z

    move-result v1

    .line 560
    .local v1, "handled":Z
    if-nez v1, :cond_1

    .line 561
    const-string/jumbo v3, "InCallActivity should always handle KEYCODE_CALL in onKeyDown"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    :cond_1
    return v4

    .line 576
    .end local v1    # "handled":Z
    :sswitch_2
    return v4

    .line 582
    :sswitch_3
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmWorking()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 583
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->setAmVolumeUp(I)V

    goto :goto_0

    .line 589
    :sswitch_4
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_1
    invoke-virtual {v5, v3}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    .line 590
    return v4

    :cond_2
    move v3, v4

    .line 589
    goto :goto_1

    .line 594
    :sswitch_5
    sget-boolean v3, Lcom/android/incallui/Log;->VERBOSE:Z

    if-eqz v3, :cond_0

    .line 595
    const-string/jumbo v3, "----------- InCallActivity View dump --------------"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 598
    .local v2, "w":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 599
    .local v0, "decorView":Landroid/view/View;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "View dump:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    return v4

    .line 612
    .end local v0    # "decorView":Landroid/view/View;
    .end local v2    # "w":Landroid/view/Window;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 557
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1b -> :sswitch_2
        0x46 -> :sswitch_0
        0x4c -> :sswitch_5
        0x5b -> :sswitch_4
        0xa4 -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 537
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v0, p2}, Lcom/android/incallui/DialpadFragment;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 537
    if-eqz v0, :cond_0

    .line 539
    return v1

    .line 540
    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 542
    return v1

    .line 544
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNewIntent: intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallActivity;->setIntent(Landroid/content/Intent;)V

    .line 490
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->internalResolveIntent(Landroid/content/Intent;)V

    .line 473
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 526
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 527
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->onBackPressed()V

    .line 529
    const/4 v1, 0x1

    return v1

    .line 531
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 368
    const-string/jumbo v0, "onPause()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v0, v1}, Lcom/android/incallui/DialpadFragment;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    .line 373
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    .line 374
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSomcSmartCoverManager:Lcom/android/incallui/SomcSmartCoverManager;

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSomcSmartCoverManager:Lcom/android/incallui/SomcSmartCoverManager;

    invoke-virtual {v0}, Lcom/android/incallui/SomcSmartCoverManager;->stopSmartCoverBackLightTimer()V

    .line 377
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 378
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->unsetActivity(Lcom/android/incallui/InCallActivity;)V

    .line 380
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 367
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 318
    const-string/jumbo v0, "onResume()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 321
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->setThemeColors()V

    .line 322
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    .line 329
    iget v0, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    if-eq v0, v2, :cond_1

    .line 330
    iget v0, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 333
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/InCallPresenter;->setFullScreen(ZZ)V

    .line 335
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    .line 336
    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mAnimateDialpadOnShow:Z

    .line 335
    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/CallButtonFragment;->displayDialpad(ZZ)V

    .line 337
    iput-boolean v3, p0, Lcom/android/incallui/InCallActivity;->mAnimateDialpadOnShow:Z

    .line 339
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDtmfText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/DialpadFragment;->setDtmfText(Ljava/lang/String;)V

    .line 341
    iput-object v4, p0, Lcom/android/incallui/InCallActivity;->mDtmfText:Ljava/lang/String;

    .line 349
    :cond_0
    :goto_0
    iput v2, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequest:I

    .line 352
    :cond_1
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogOnResume:Z

    if-eqz v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogCallId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogChars:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/InCallActivity;->showPostCharWaitDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSomcSmartCoverManager:Lcom/android/incallui/SomcSmartCoverManager;

    if-eqz v0, :cond_3

    .line 357
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSomcSmartCoverManager:Lcom/android/incallui/SomcSmartCoverManager;

    invoke-virtual {v0}, Lcom/android/incallui/SomcSmartCoverManager;->start()V

    .line 358
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSomcSmartCoverManager:Lcom/android/incallui/SomcSmartCoverManager;

    invoke-virtual {v0}, Lcom/android/incallui/SomcSmartCoverManager;->isSmartCoverBackLightTimerNecessary()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 359
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSomcSmartCoverManager:Lcom/android/incallui/SomcSmartCoverManager;

    invoke-virtual {v0}, Lcom/android/incallui/SomcSmartCoverManager;->startSmartCoverBackLightTimer()V

    .line 317
    :cond_3
    return-void

    .line 344
    :cond_4
    const-string/jumbo v0, "onResume : force hide dialpad"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0, v3, v3}, Lcom/android/incallui/CallButtonFragment;->displayDialpad(ZZ)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Bundle;

    .prologue
    .line 293
    const-string/jumbo v1, "InCallActivity.show_dialpad"

    .line 294
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonFragment;->isDialpadVisible()Z

    move-result v0

    .line 293
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 295
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    if-eqz v0, :cond_0

    .line 296
    const-string/jumbo v0, "InCallActivity.dialpad_text"

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/incallui/DialpadFragment;->getDtmfText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 291
    return-void

    .line 294
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 303
    const-string/jumbo v0, "onStart()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsVisible:Z

    .line 309
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->setActivity(Lcom/android/incallui/InCallActivity;)V

    .line 311
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getRequestedOrientation()I

    move-result v0

    .line 310
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->isEnableInCallOrientationEvent(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->enableInCallOrientationEventListener(Z)V

    .line 313
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onActivityStarted()V

    .line 302
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 385
    const-string/jumbo v0, "onStop()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mIsVisible:Z

    .line 387
    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->enableInCallOrientationEventListener(Z)V

    .line 388
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->updateIsChangingConfigurations()V

    .line 389
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onActivityStopped()V

    .line 390
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 384
    return-void
.end method

.method public setExcludeFromRecents(Z)V
    .locals 8
    .param p1, "exclude"    # Z

    .prologue
    .line 1167
    const-string/jumbo v6, "activity"

    invoke-virtual {p0, v6}, Lcom/android/incallui/InCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1168
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v5

    .line 1169
    .local v5, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$AppTask;>;"
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getTaskId()I

    move-result v4

    .line 1170
    .local v4, "taskId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 1171
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$AppTask;

    .line 1172
    .local v3, "task":Landroid/app/ActivityManager$AppTask;
    invoke-virtual {v3}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v6

    iget v6, v6, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-ne v6, v4, :cond_0

    .line 1174
    :try_start_0
    invoke-virtual {v3, p1}, Landroid/app/ActivityManager$AppTask;->setExcludeFromRecents(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1170
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1175
    :catch_0
    move-exception v1

    .line 1176
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v6, Lcom/android/incallui/InCallActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "RuntimeException when excluding task from recents."

    invoke-static {v6, v7, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 1166
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "task":Landroid/app/ActivityManager$AppTask;
    :cond_1
    return-void
.end method

.method public showAnswerFragment(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    const/4 v1, 0x1

    .line 947
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 948
    const-string/jumbo v0, "tag_callcard_fragment"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/incallui/InCallActivity;->showFragment(Ljava/lang/String;ZZ)V

    .line 951
    :cond_0
    const-string/jumbo v0, "tag_answer_fragment"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/incallui/InCallActivity;->showFragment(Ljava/lang/String;ZZ)V

    .line 952
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSomcSmartCoverManager:Lcom/android/incallui/SomcSmartCoverManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSomcSmartCoverManager:Lcom/android/incallui/SomcSmartCoverManager;

    invoke-virtual {v0}, Lcom/android/incallui/SomcSmartCoverManager;->isFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 953
    const-string/jumbo v0, "tag_somc_small_answer_fragment"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/incallui/InCallActivity;->showFragment(Ljava/lang/String;ZZ)V

    .line 946
    :cond_1
    return-void
.end method

.method public showAnsweringMachineFragment(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1313
    const-string/jumbo v0, "tag_answering_machine_fragment"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/incallui/InCallActivity;->showFragment(Ljava/lang/String;ZZ)V

    .line 1314
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSomcSmartCoverManager:Lcom/android/incallui/SomcSmartCoverManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSomcSmartCoverManager:Lcom/android/incallui/SomcSmartCoverManager;

    invoke-virtual {v0}, Lcom/android/incallui/SomcSmartCoverManager;->isFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1315
    const-string/jumbo v0, "tag_somc_small_answering_machine_fragment"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/incallui/InCallActivity;->showFragment(Ljava/lang/String;ZZ)V

    .line 1312
    :cond_0
    return-void
.end method

.method public showCallCardFragment(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    const/4 v1, 0x1

    .line 925
    const-string/jumbo v0, "tag_callcard_fragment"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/incallui/InCallActivity;->showFragment(Ljava/lang/String;ZZ)V

    .line 926
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSomcSmartCoverManager:Lcom/android/incallui/SomcSmartCoverManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mSomcSmartCoverManager:Lcom/android/incallui/SomcSmartCoverManager;

    invoke-virtual {v0}, Lcom/android/incallui/SomcSmartCoverManager;->isFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    const-string/jumbo v0, "tag_somc_small_callcard_fragment"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/incallui/InCallActivity;->showFragment(Ljava/lang/String;ZZ)V

    .line 924
    :cond_0
    return-void
.end method

.method public showConferenceFragment(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 938
    const-string/jumbo v0, "tag_conference_manager_fragment"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/incallui/InCallActivity;->showFragment(Ljava/lang/String;ZZ)V

    .line 939
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/ConferenceManagerFragment;->onVisibilityChanged(Z)V

    .line 943
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 937
    return-void

    .line 943
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showDialpadFragment(ZZ)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v2, 0x1

    .line 898
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 903
    :cond_1
    if-nez p2, :cond_4

    .line 904
    const-string/jumbo v1, "tag_dialpad_fragment"

    invoke-direct {p0, v1, p1, v2}, Lcom/android/incallui/InCallActivity;->showFragment(Ljava/lang/String;ZZ)V

    .line 914
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v0

    .line 915
    .local v0, "sensor":Lcom/android/incallui/ProximitySensor;
    if-eqz v0, :cond_2

    .line 916
    invoke-virtual {v0, p1}, Lcom/android/incallui/ProximitySensor;->onDialpadVisible(Z)V

    .line 896
    :cond_2
    return-void

    .line 899
    .end local v0    # "sensor":Lcom/android/incallui/ProximitySensor;
    :cond_3
    return-void

    .line 906
    :cond_4
    if-eqz p1, :cond_5

    .line 907
    const-string/jumbo v1, "tag_dialpad_fragment"

    invoke-direct {p0, v1, v2, v2}, Lcom/android/incallui/InCallActivity;->showFragment(Ljava/lang/String;ZZ)V

    .line 908
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/incallui/DialpadFragment;->animateShowDialpad()V

    .line 910
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallCardFragment;->onDialpadVisibilityChange(Z)V

    .line 911
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/incallui/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mSlideIn:Landroid/view/animation/Animation;

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mSlideOut:Landroid/view/animation/Animation;

    goto :goto_1
.end method

.method public showPostCharWaitDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "chars"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1054
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1055
    new-instance v0, Lcom/android/incallui/PostCharDialogFragment;

    invoke-direct {v0, p1, p2}, Lcom/android/incallui/PostCharDialogFragment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    .local v0, "fragment":Lcom/android/incallui/PostCharDialogFragment;
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "postCharWait"

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/PostCharDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1057
    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    .line 1059
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogOnResume:Z

    .line 1060
    iput-object v3, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogCallId:Ljava/lang/String;

    .line 1061
    iput-object v3, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogChars:Ljava/lang/String;

    .line 1053
    .end local v0    # "fragment":Lcom/android/incallui/PostCharDialogFragment;
    :goto_0
    return-void

    .line 1063
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogOnResume:Z

    .line 1064
    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogCallId:Ljava/lang/String;

    .line 1065
    iput-object p2, p0, Lcom/android/incallui/InCallActivity;->mShowPostCharWaitDialogChars:Ljava/lang/String;

    goto :goto_0
.end method

.method public updateDialogsVisibility(Z)V
    .locals 1
    .param p1, "isShow"    # Z

    .prologue
    .line 1002
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->showDialogs(Z)V

    .line 1003
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/PostCharDialogFragment;->showDialogs(Z)V

    .line 1001
    :cond_0
    return-void
.end method

.method public updateDsdaTab()V
    .locals 6

    .prologue
    .line 1205
    sget v2, Lcom/android/incallui/InCallServiceImpl;->sPhoneCount:I

    .line 1206
    .local v2, "phoneCount":I
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1208
    .local v0, "bar":Landroid/app/ActionBar;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1209
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/incallui/CallList;->getSubId(I)[I

    move-result-object v3

    .line 1210
    .local v3, "subId":[I
    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/CallList;->hasAnyLiveCall(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1211
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mDsdaTabAdd:[Z

    aget-boolean v4, v4, v1

    if-nez v4, :cond_0

    .line 1212
    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->addDsdaTab(I)V

    .line 1208
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1215
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->removeDsdaTab(I)V

    goto :goto_1

    .line 1219
    .end local v3    # "subId":[I
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->updateDsdaTabSelection()V

    .line 1204
    return-void
.end method
