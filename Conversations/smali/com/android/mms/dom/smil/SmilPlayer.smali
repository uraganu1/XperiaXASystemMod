.class public Lcom/android/mms/dom/smil/SmilPlayer;
.super Ljava/lang/Object;
.source "SmilPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;,
        Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;,
        Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;,
        Lcom/android/mms/dom/smil/SmilPlayer$1;
    }
.end annotation


# static fields
.field private static sPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

.field private static final sTimelineEntryComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

.field private mActiveElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/smil/ElementTime;",
            ">;"
        }
    .end annotation
.end field

.field private mAllEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mAllEntriesSize:I

.field private mCurrentElement:I

.field private mCurrentSlide:I

.field private mCurrentTime:J

.field private mMediaTimeUpdatedEvent:Lorg/w3c/dom/events/Event;

.field private mPlayerThread:Ljava/lang/Thread;

.field private mRoot:Lorg/w3c/dom/smil/ElementTime;

.field private mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/android/mms/dom/smil/SmilPlayer$1;

    invoke-direct {v0}, Lcom/android/mms/dom/smil/SmilPlayer$1;-><init>()V

    .line 82
    sput-object v0, Lcom/android/mms/dom/smil/SmilPlayer;->sTimelineEntryComparator:Ljava/util/Comparator;

    .line 89
    new-instance v0, Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-direct {v0}, Lcom/android/mms/dom/smil/SmilPlayer;-><init>()V

    sput-object v0, Lcom/android/mms/dom/smil/SmilPlayer;->sPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    .line 51
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->INITIALIZED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    .line 98
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntriesSize:I

    .line 264
    return-void
.end method

.method private declared-synchronized actionBackSlide(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .locals 12
    .param p1, "currentEntry"    # Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .prologue
    const-wide v10, 0x408f400000000000L    # 1000.0

    const/4 v8, 0x0

    monitor-enter p0

    .line 664
    :try_start_0
    sget-object v6, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 665
    const/4 v2, 0x0

    .line 668
    .local v2, "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    iget-object v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    .line 669
    iget v7, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    .line 668
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    invoke-virtual {v6}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide v6

    mul-double/2addr v6, v10

    double-to-long v0, v6

    .line 670
    .local v0, "begin":J
    iget-wide v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    sub-long v4, v6, v0

    .line 673
    .local v4, "passed":J
    invoke-direct {p0, v4, v5}, Lcom/android/mms/dom/smil/SmilPlayer;->isPossibleBackSlide(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    monitor-exit p0

    .line 674
    return-object v8

    .line 677
    :cond_0
    const-wide/16 v6, 0x5dc

    cmp-long v6, v4, v6

    if-lez v6, :cond_3

    if-eqz p1, :cond_3

    .line 678
    :try_start_1
    const-string/jumbo v6, "Conversations"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 679
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Back to begin of slide = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 681
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/dom/smil/SmilPlayer;->seekEndEntryFromCurrent(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    move-result-object v2

    .line 682
    .local v2, "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    iget v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 683
    iput-wide v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 685
    if-eqz v2, :cond_2

    .end local v2    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :goto_0
    monitor-exit p0

    return-object v2

    .restart local v2    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_2
    move-object v2, p1

    goto :goto_0

    .line 687
    .local v2, "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_3
    :try_start_2
    iget v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    monitor-exit p0

    .line 689
    return-object v8

    .line 693
    :cond_4
    :try_start_3
    iget v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    add-int/lit8 v3, v6, -0x1

    .end local v2    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .local v3, "i":I
    :goto_1
    if-lez v3, :cond_7

    .line 694
    iget-object v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 696
    .local v2, "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-direct {p0, v2}, Lcom/android/mms/dom/smil/SmilPlayer;->isBeginOfSlide(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 697
    const-string/jumbo v6, "Conversations"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 698
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "backSlide to : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 701
    :cond_5
    invoke-virtual {v2}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide v6

    mul-double/2addr v6, v10

    double-to-long v6, v6

    iput-wide v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 704
    if-eqz p1, :cond_6

    .line 706
    invoke-direct {p0, p1}, Lcom/android/mms/dom/smil/SmilPlayer;->seekEndEntryFromCurrent(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    move-result-object v2

    .line 710
    :cond_6
    add-int/lit8 v6, v3, -0x1

    iput v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 714
    .end local v2    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_7
    if-eqz v2, :cond_9

    :goto_2
    monitor-exit p0

    return-object v2

    .line 693
    .restart local v2    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .end local v2    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_9
    move-object v2, p1

    .line 714
    goto :goto_2

    .end local v0    # "begin":J
    .end local v3    # "i":I
    .end local v4    # "passed":J
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private declared-synchronized actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V
    .locals 4
    .param p1, "entry"    # Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .prologue
    monitor-enter p0

    .line 572
    if-eqz p1, :cond_0

    .line 573
    :try_start_0
    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getAction()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    monitor-exit p0

    .line 571
    return-void

    .line 575
    :pswitch_0
    :try_start_1
    const-string/jumbo v0, "Conversations"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[START]  at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 578
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->beginElement()Z

    .line 579
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 582
    :pswitch_1
    :try_start_2
    const-string/jumbo v0, "Conversations"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[STOP]   at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 585
    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->endElement()Z

    .line 586
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 573
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized actionForwardSlide(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .locals 6
    .param p1, "currentEntry"    # Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 631
    :try_start_0
    sget-object v2, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 634
    iget v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    iget v3, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v2, v3, :cond_0

    monitor-exit p0

    .line 635
    return-object v4

    .line 639
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntriesSize:I

    if-ge v1, v2, :cond_1

    .line 640
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 642
    .local v0, "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isBeginOfSlide(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 643
    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    iput-wide v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 651
    .end local v0    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/dom/smil/SmilPlayer;->seekEndEntryFromCurrent(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 646
    .restart local v0    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_2
    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isEndOfSlideshow(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    monitor-exit p0

    .line 648
    return-object v4

    .line 639
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized actionPause()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 604
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->pauseActiveElements()V

    .line 605
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PAUSED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    .line 606
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 603
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized actionReload()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 619
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->reloadActiveSlide()V

    .line 620
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 618
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized actionStop()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 610
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->endActiveElements()V

    .line 611
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 612
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 613
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    .line 614
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->STOPPED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    .line 615
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 609
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized beginSmilDocument()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 451
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 452
    .local v0, "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 450
    return-void

    .end local v0    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized endActiveElements()V
    .locals 6

    .prologue
    monitor-enter p0

    .line 526
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 527
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 528
    .local v0, "element":Lorg/w3c/dom/smil/ElementTime;
    const-string/jumbo v2, "Conversations"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[STOP]   at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 531
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->endElement()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v0    # "element":Lorg/w3c/dom/smil/ElementTime;
    :cond_1
    monitor-exit p0

    .line 525
    return-void

    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized getOffsetTime(Lorg/w3c/dom/smil/ElementTime;)D
    .locals 6
    .param p1, "element"    # Lorg/w3c/dom/smil/ElementTime;

    .prologue
    monitor-enter p0

    .line 456
    :try_start_0
    iget v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    if-ge v1, v2, :cond_1

    .line 457
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 458
    .local v0, "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 460
    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    monitor-exit p0

    return-wide v2

    .line 456
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 464
    .end local v0    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_1
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    monitor-exit p0

    return-wide v2

    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private static getParTimeline(Lorg/w3c/dom/smil/ElementParallelTimeContainer;DD)Ljava/util/ArrayList;
    .locals 23
    .param p0, "par"    # Lorg/w3c/dom/smil/ElementParallelTimeContainer;
    .param p1, "offset"    # D
    .param p3, "maxOffset"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/ElementParallelTimeContainer;",
            "DD)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v19, "timeline":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v16

    .line 115
    .local v16, "myBeginList":Lorg/w3c/dom/smil/TimeList;
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v5

    .line 116
    .local v5, "begin":Lorg/w3c/dom/smil/Time;
    invoke-interface {v5}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v20

    add-double v6, v20, p1

    .line 117
    .local v6, "beginOffset":D
    cmpl-double v20, v6, p3

    if-lez v20, :cond_0

    .line 119
    return-object v19

    .line 121
    :cond_0
    new-instance v15, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v15, v6, v7, v0, v1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 122
    .local v15, "myBegin":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v18

    .line 129
    .local v18, "myEndList":Lorg/w3c/dom/smil/TimeList;
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v11

    .line 130
    .local v11, "end":Lorg/w3c/dom/smil/Time;
    invoke-interface {v11}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v20

    add-double v12, v20, p1

    .line 131
    .local v12, "endOffset":D
    cmpl-double v20, v12, p3

    if-lez v20, :cond_1

    .line 132
    move-wide/from16 v12, p3

    .line 134
    :cond_1
    new-instance v17, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v12, v13, v1, v2}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 136
    .local v17, "myEnd":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    move-wide/from16 p3, v12

    .line 138
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 139
    .local v10, "children":Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    move/from16 v0, v20

    if-ge v14, v0, :cond_2

    .line 140
    invoke-interface {v10, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/smil/ElementTime;

    .line 141
    .local v8, "child":Lorg/w3c/dom/smil/ElementTime;
    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-static {v8, v0, v1, v2, v3}, Lcom/android/mms/dom/smil/SmilPlayer;->getTimeline(Lorg/w3c/dom/smil/ElementTime;DD)Ljava/util/ArrayList;

    move-result-object v9

    .line 142
    .local v9, "childTimeline":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 139
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 145
    .end local v8    # "child":Lorg/w3c/dom/smil/ElementTime;
    .end local v9    # "childTimeline":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    :cond_2
    sget-object v20, Lcom/android/mms/dom/smil/SmilPlayer;->sTimelineEntryComparator:Ljava/util/Comparator;

    invoke-static/range {v19 .. v20}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 149
    sub-double v20, v12, p1

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x447a0000    # 1000.0f

    mul-float v20, v20, v21

    .line 148
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 150
    .local v4, "activeChildrenAtEnd":Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    move/from16 v0, v20

    if-ge v14, v0, :cond_3

    .line 151
    new-instance v21, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 152
    invoke-interface {v4, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/smil/ElementTime;

    .line 153
    const/16 v22, 0x1

    .line 151
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-direct {v0, v12, v13, v1, v2}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 157
    :cond_3
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    return-object v19
.end method

.method public static getPlayer()Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 1

    .prologue
    .line 269
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer;->sPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object v0
.end method

.method private static getSeqTimeline(Lorg/w3c/dom/smil/ElementSequentialTimeContainer;DD)Ljava/util/ArrayList;
    .locals 25
    .param p0, "seq"    # Lorg/w3c/dom/smil/ElementSequentialTimeContainer;
    .param p1, "offset"    # D
    .param p3, "maxOffset"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/ElementSequentialTimeContainer;",
            "DD)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v19, "timeline":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    move-wide/from16 v20, p1

    .line 168
    .local v20, "orgOffset":D
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v16

    .line 173
    .local v16, "myBeginList":Lorg/w3c/dom/smil/TimeList;
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v5

    .line 174
    .local v5, "begin":Lorg/w3c/dom/smil/Time;
    invoke-interface {v5}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v22

    add-double v6, v22, p1

    .line 175
    .local v6, "beginOffset":D
    cmpl-double v22, v6, p3

    if-lez v22, :cond_0

    .line 177
    return-object v19

    .line 179
    :cond_0
    new-instance v15, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v15, v6, v7, v0, v1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 180
    .local v15, "myBegin":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v18

    .line 187
    .local v18, "myEndList":Lorg/w3c/dom/smil/TimeList;
    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v11

    .line 188
    .local v11, "end":Lorg/w3c/dom/smil/Time;
    invoke-interface {v11}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v22

    add-double v12, v22, p1

    .line 189
    .local v12, "endOffset":D
    cmpl-double v22, v12, p3

    if-lez v22, :cond_1

    .line 190
    move-wide/from16 v12, p3

    .line 192
    :cond_1
    new-instance v17, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-direct {v0, v12, v13, v1, v2}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 194
    .local v17, "myEnd":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    move-wide/from16 p3, v12

    .line 197
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 198
    .local v10, "children":Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v14, v0, :cond_2

    .line 199
    invoke-interface {v10, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/smil/ElementTime;

    .line 200
    .local v8, "child":Lorg/w3c/dom/smil/ElementTime;
    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-static {v8, v0, v1, v2, v3}, Lcom/android/mms/dom/smil/SmilPlayer;->getTimeline(Lorg/w3c/dom/smil/ElementTime;DD)Ljava/util/ArrayList;

    move-result-object v9

    .line 201
    .local v9, "childTimeline":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 204
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide p1

    .line 198
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 209
    .end local v8    # "child":Lorg/w3c/dom/smil/ElementTime;
    .end local v9    # "childTimeline":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    :cond_2
    sub-double v22, v12, v20

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    .line 208
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 210
    .local v4, "activeChildrenAtEnd":Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v14, v0, :cond_3

    .line 211
    new-instance v23, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 212
    invoke-interface {v4, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    check-cast v22, Lorg/w3c/dom/smil/ElementTime;

    .line 213
    const/16 v24, 0x1

    .line 211
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move/from16 v2, v24

    invoke-direct {v0, v12, v13, v1, v2}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 217
    :cond_3
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    return-object v19
.end method

.method private static getTimeline(Lorg/w3c/dom/smil/ElementTime;DD)Ljava/util/ArrayList;
    .locals 15
    .param p0, "element"    # Lorg/w3c/dom/smil/ElementTime;
    .param p1, "offset"    # D
    .param p3, "maxOffset"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/ElementTime;",
            "DD)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    instance-of v11, p0, Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    if-eqz v11, :cond_0

    .line 225
    check-cast p0, Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    .end local p0    # "element":Lorg/w3c/dom/smil/ElementTime;
    invoke-static/range {p0 .. p4}, Lcom/android/mms/dom/smil/SmilPlayer;->getParTimeline(Lorg/w3c/dom/smil/ElementParallelTimeContainer;DD)Ljava/util/ArrayList;

    move-result-object v11

    return-object v11

    .line 226
    .restart local p0    # "element":Lorg/w3c/dom/smil/ElementTime;
    :cond_0
    instance-of v11, p0, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    if-eqz v11, :cond_1

    .line 227
    check-cast p0, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    .end local p0    # "element":Lorg/w3c/dom/smil/ElementTime;
    invoke-static/range {p0 .. p4}, Lcom/android/mms/dom/smil/SmilPlayer;->getSeqTimeline(Lorg/w3c/dom/smil/ElementSequentialTimeContainer;DD)Ljava/util/ArrayList;

    move-result-object v11

    return-object v11

    .line 230
    .restart local p0    # "element":Lorg/w3c/dom/smil/ElementTime;
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v10, "timeline":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    invoke-interface {p0}, Lorg/w3c/dom/smil/ElementTime;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v1

    .line 233
    .local v1, "beginList":Lorg/w3c/dom/smil/TimeList;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v11

    if-ge v9, v11, :cond_3

    .line 234
    invoke-interface {v1, v9}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v0

    .line 235
    .local v0, "begin":Lorg/w3c/dom/smil/Time;
    invoke-interface {v0}, Lorg/w3c/dom/smil/Time;->getResolved()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 236
    invoke-interface {v0}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v12

    add-double v2, v12, p1

    .line 237
    .local v2, "beginOffset":D
    cmpg-double v11, v2, p3

    if-gtz v11, :cond_2

    .line 238
    new-instance v8, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 239
    const/4 v11, 0x0

    .line 238
    invoke-direct {v8, v2, v3, p0, v11}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 240
    .local v8, "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .end local v2    # "beginOffset":D
    .end local v8    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 245
    .end local v0    # "begin":Lorg/w3c/dom/smil/Time;
    :cond_3
    invoke-interface {p0}, Lorg/w3c/dom/smil/ElementTime;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v5

    .line 246
    .local v5, "endList":Lorg/w3c/dom/smil/TimeList;
    const/4 v9, 0x0

    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v11

    if-ge v9, v11, :cond_5

    .line 247
    invoke-interface {v5, v9}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v4

    .line 248
    .local v4, "end":Lorg/w3c/dom/smil/Time;
    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getResolved()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 249
    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v12

    add-double v6, v12, p1

    .line 250
    .local v6, "endOffset":D
    cmpg-double v11, v6, p3

    if-gtz v11, :cond_4

    .line 251
    new-instance v8, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 252
    const/4 v11, 0x1

    .line 251
    invoke-direct {v8, v6, v7, p0, v11}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 253
    .restart local v8    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .end local v6    # "endOffset":D
    .end local v8    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 258
    .end local v4    # "end":Lorg/w3c/dom/smil/Time;
    :cond_5
    sget-object v11, Lcom/android/mms/dom/smil/SmilPlayer;->sTimelineEntryComparator:Ljava/util/Comparator;

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 260
    return-object v10
.end method

.method private declared-synchronized isBackSlideAction()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->BACK:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isBeginOfSlide(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Z
    .locals 2
    .param p1, "entry"    # Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    .line 403
    if-eqz p1, :cond_1

    .line 404
    :try_start_0
    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 405
    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v0

    instance-of v0, v0, Lcom/android/mms/dom/smil/SmilParElementImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 404
    return v0

    :cond_1
    monitor-exit p0

    .line 407
    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isEndOfSlide(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Z
    .locals 3
    .param p1, "entry"    # Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    .line 417
    if-eqz p1, :cond_1

    .line 418
    :try_start_0
    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 419
    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v0

    instance-of v0, v0, Lcom/android/mms/dom/smil/SmilParElementImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 418
    return v0

    :cond_1
    monitor-exit p0

    .line 421
    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isEndOfSlideshow(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Z
    .locals 3
    .param p1, "entry"    # Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    .line 431
    if-eqz p1, :cond_1

    .line 432
    :try_start_0
    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 433
    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v0

    instance-of v0, v0, Lcom/android/mms/dom/smil/SmilDocumentImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 432
    return v0

    :cond_1
    monitor-exit p0

    .line 435
    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isForwardSlideAction()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->FORWARD:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isPauseAction()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->PAUSE:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isPossibleBackSlide(J)Z
    .locals 7
    .param p1, "passed"    # J

    .prologue
    const-wide/16 v4, 0x1f4

    .line 760
    const/4 v0, 0x1

    .line 762
    .local v0, "bRet":Z
    cmp-long v2, p1, v4

    if-gez v2, :cond_0

    .line 763
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 765
    sub-long v2, v4, p1

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/android/mms/dom/smil/SmilPlayer;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    :cond_0
    :goto_0
    return v0

    .line 767
    :catch_0
    move-exception v1

    .line 768
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "Unexpected InterruptedException."

    invoke-static {v2, v1}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 771
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized isReloadAction()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->RELOAD:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isStartAction()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->START:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isStopAction()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->STOP:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized pauseActiveElements()V
    .locals 6

    .prologue
    monitor-enter p0

    .line 536
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 537
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 538
    .local v0, "element":Lorg/w3c/dom/smil/ElementTime;
    const-string/jumbo v2, "Conversations"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 539
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[PAUSE]   at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 541
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->pauseElement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v0    # "element":Lorg/w3c/dom/smil/ElementTime;
    :cond_1
    monitor-exit p0

    .line 535
    return-void

    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized reloadActiveSlide()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 440
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 441
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->beginSmilDocument()V

    .line 443
    iget v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    if-ge v1, v2, :cond_0

    .line 444
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 445
    .local v0, "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V

    .line 443
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 447
    .end local v0    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->seekActiveMedia()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 439
    return-void

    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized reloadCurrentEntry()Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .locals 2

    .prologue
    monitor-enter p0

    .line 596
    :try_start_0
    iget v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 597
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 599
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized resumeActiveElements()V
    .locals 6

    .prologue
    monitor-enter p0

    .line 546
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 547
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 548
    iget-object v3, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 549
    .local v0, "element":Lorg/w3c/dom/smil/ElementTime;
    sget-boolean v3, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v3, :cond_0

    .line 550
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[RESUME]   at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 552
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->resumeElement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "element":Lorg/w3c/dom/smil/ElementTime;
    :cond_1
    monitor-exit p0

    .line 545
    return-void

    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized seekActiveMedia()V
    .locals 8

    .prologue
    monitor-enter p0

    .line 468
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 469
    iget-object v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 470
    .local v0, "element":Lorg/w3c/dom/smil/ElementTime;
    instance-of v4, v0, Lcom/android/mms/dom/smil/SmilParElementImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    monitor-exit p0

    .line 471
    return-void

    .line 473
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilPlayer;->getOffsetTime(Lorg/w3c/dom/smil/ElementTime;)D

    move-result-wide v2

    .line 474
    .local v2, "offset":D
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_2

    iget-wide v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    long-to-double v4, v4

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_2

    .line 475
    const-string/jumbo v4, "Conversations"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 476
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[SEEK]   at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 478
    :cond_1
    iget-wide v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    long-to-double v4, v4

    sub-double/2addr v4, v2

    double-to-float v4, v4

    invoke-interface {v0, v4}, Lorg/w3c/dom/smil/ElementTime;->seekElement(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v0    # "element":Lorg/w3c/dom/smil/ElementTime;
    .end local v2    # "offset":D
    :cond_3
    monitor-exit p0

    .line 467
    return-void

    .end local v1    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private seekEndEntryFromCurrent(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .locals 3
    .param p1, "currentEntry"    # Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .prologue
    .line 729
    invoke-direct {p0, p1}, Lcom/android/mms/dom/smil/SmilPlayer;->isEndOfSlide(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 731
    invoke-direct {p0, p1}, Lcom/android/mms/dom/smil/SmilPlayer;->actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V

    .line 732
    iget v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 737
    iget v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntriesSize:I

    if-ge v1, v2, :cond_1

    .line 738
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 740
    .local v0, "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isEndOfSlide(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 742
    iput v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 743
    return-object v0

    .line 747
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V

    .line 737
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 751
    .end local v0    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private declared-synchronized waitForEntry(J)V
    .locals 11
    .param p1, "interval"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0xc8

    monitor-enter p0

    .line 485
    :try_start_0
    const-string/jumbo v6, "Conversations"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 486
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Waiting for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 489
    :cond_0
    const-wide/16 v0, 0x0

    .line 491
    .local v0, "overhead":J
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-lez v6, :cond_4

    .line 492
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStopAction()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isReloadAction()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPauseAction()Z

    move-result v6

    if-nez v6, :cond_1

    .line 493
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isForwardSlideAction()Z

    move-result v6

    .line 492
    if-nez v6, :cond_1

    .line 493
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isBackSlideAction()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 492
    if-eqz v6, :cond_2

    :cond_1
    monitor-exit p0

    .line 494
    return-void

    .line 497
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 498
    .local v4, "startAt":J
    const-wide/16 v6, 0xc8

    invoke-static {p1, p2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 499
    .local v2, "sleep":J
    cmp-long v6, v0, v2

    if-gez v6, :cond_3

    .line 500
    sub-long v6, v2, v0

    invoke-virtual {p0, v6, v7}, Lcom/android/mms/dom/smil/SmilPlayer;->wait(J)V

    .line 501
    iget-wide v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 507
    :goto_1
    iget-object v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mRoot:Lorg/w3c/dom/smil/ElementTime;

    check-cast v6, Lorg/w3c/dom/events/EventTarget;

    iget-object v7, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mMediaTimeUpdatedEvent:Lorg/w3c/dom/events/Event;

    invoke-interface {v6, v7}, Lorg/w3c/dom/events/EventTarget;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 509
    sub-long/2addr p1, v8

    .line 510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    sub-long v0, v6, v2

    goto :goto_0

    .line 503
    :cond_3
    const-wide/16 v2, 0x0

    .line 504
    iget-wide v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    add-long/2addr v6, v0

    iput-wide v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0    # "overhead":J
    .end local v2    # "sleep":J
    .end local v4    # "startAt":J
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .restart local v0    # "overhead":J
    :cond_4
    monitor-exit p0

    .line 484
    return-void
.end method

.method private declared-synchronized waitForWakeUp()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 558
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStartAction()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStopAction()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isReloadAction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 559
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isForwardSlideAction()Z

    move-result v1

    .line 558
    if-nez v1, :cond_1

    .line 559
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isBackSlideAction()Z

    move-result v1

    .line 558
    :goto_1
    if-nez v1, :cond_2

    .line 560
    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/dom/smil/SmilPlayer;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string/jumbo v1, "Unexpected InterruptedException."

    invoke-static {v1, v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_2
    monitor-exit p0

    .line 556
    return-void

    .line 558
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 562
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStartAction()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 563
    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 564
    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PLAYING:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized backSlide()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 398
    :try_start_0
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->BACK:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 399
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 397
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized forwardSlide()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 387
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 388
    return-void

    .line 390
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->FORWARD:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 391
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 386
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentPosition()I
    .locals 2

    .prologue
    monitor-enter p0

    .line 522
    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v0, v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDuration()I
    .locals 2

    .prologue
    monitor-enter p0

    .line 515
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 516
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    invoke-static {v0}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->-get0(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit16 v0, v0, 0x3e8

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Lorg/w3c/dom/smil/ElementTime;)V
    .locals 6
    .param p1, "root"    # Lorg/w3c/dom/smil/ElementTime;

    .prologue
    monitor-enter p0

    .line 321
    :try_start_0
    iput-object p1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mRoot:Lorg/w3c/dom/smil/ElementTime;

    .line 322
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mRoot:Lorg/w3c/dom/smil/ElementTime;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x43e0000000000000L    # 9.223372036854776E18

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/mms/dom/smil/SmilPlayer;->getTimeline(Lorg/w3c/dom/smil/ElementTime;DD)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    .line 324
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntriesSize:I

    .line 326
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mRoot:Lorg/w3c/dom/smil/ElementTime;

    check-cast v0, Lorg/w3c/dom/events/DocumentEvent;

    const-string/jumbo v1, "Event"

    invoke-interface {v0, v1}, Lorg/w3c/dom/events/DocumentEvent;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mMediaTimeUpdatedEvent:Lorg/w3c/dom/events/Event;

    .line 327
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mMediaTimeUpdatedEvent:Lorg/w3c/dom/events/Event;

    const-string/jumbo v1, "mediaTimeUpdated"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lorg/w3c/dom/events/Event;->initEvent(Ljava/lang/String;ZZ)V

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 320
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPausedState()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PAUSED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPlayedState()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PLAYED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPlayingState()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PLAYING:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isStoppedState()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->STOPPED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 345
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->PAUSE:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 347
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 344
    return-void

    .line 349
    :cond_0
    :try_start_1
    const-string/jumbo v0, "Error State: Playback is not playing!"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized play()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 332
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 334
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 335
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    .line 336
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mPlayerThread:Ljava/lang/Thread;

    .line 337
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PLAYING:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    .line 338
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mPlayerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 331
    return-void

    .line 340
    :cond_0
    :try_start_1
    const-string/jumbo v0, "Error State: Playback is playing!"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reload()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 375
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    :cond_0
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->RELOAD:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 377
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    .line 374
    return-void

    .line 378
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionReload()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 10

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStoppedState()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 779
    return-void

    .line 783
    :cond_0
    monitor-enter p0

    .line 784
    :try_start_0
    iget-object v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 785
    .local v4, "size":I
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    :goto_0
    iget v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    if-ge v6, v4, :cond_d

    .line 786
    iget-object v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 787
    .local v1, "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-direct {p0, v1}, Lcom/android/mms/dom/smil/SmilPlayer;->isBeginOfSlide(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 788
    iget v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    iput v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    .line 790
    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v8

    double-to-long v2, v6

    .line 791
    .local v2, "offset":J
    const-string/jumbo v6, "Conversations"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 792
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "offset : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 793
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mCurrentTime : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 796
    :cond_2
    :goto_1
    iget-wide v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v6, v2, v6

    if-lez v6, :cond_c

    .line 798
    :try_start_1
    iget-wide v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    sub-long v6, v2, v6

    invoke-direct {p0, v6, v7}, Lcom/android/mms/dom/smil/SmilPlayer;->waitForEntry(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 803
    :cond_3
    :goto_2
    :try_start_2
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPauseAction()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStopAction()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isReloadAction()Z

    move-result v6

    if-nez v6, :cond_4

    .line 804
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isForwardSlideAction()Z

    move-result v6

    .line 803
    if-nez v6, :cond_4

    .line 804
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isBackSlideAction()Z

    move-result v6

    .line 803
    if-eqz v6, :cond_2

    .line 805
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPauseAction()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 806
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionPause()V

    .line 807
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->waitForWakeUp()V

    .line 810
    :cond_5
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStopAction()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 811
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionStop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 812
    return-void

    .line 799
    :catch_0
    move-exception v0

    .line 800
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v6, "Unexpected InterruptedException."

    invoke-static {v6, v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 783
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .end local v2    # "offset":J
    .end local v4    # "size":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 815
    .restart local v1    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .restart local v2    # "offset":J
    .restart local v4    # "size":I
    :cond_6
    :try_start_4
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isReloadAction()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 816
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionReload()V

    .line 817
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->reloadCurrentEntry()Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    .line 818
    if-nez v1, :cond_7

    monitor-exit p0

    .line 819
    return-void

    .line 822
    :cond_7
    :try_start_5
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isForwardSlideAction()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 823
    invoke-direct {p0, v1}, Lcom/android/mms/dom/smil/SmilPlayer;->actionForwardSlide(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    move-result-object v5

    .line 824
    .local v5, "tle":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    if-eqz v5, :cond_8

    .line 825
    move-object v1, v5

    .line 826
    iget-wide v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 828
    :cond_8
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 829
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->reload()V

    .line 830
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->waitForWakeUp()V

    goto :goto_1

    .line 835
    .end local v5    # "tle":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_9
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isBackSlideAction()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 836
    invoke-direct {p0, v1}, Lcom/android/mms/dom/smil/SmilPlayer;->actionBackSlide(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    move-result-object v5

    .line 837
    .restart local v5    # "tle":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    if-eqz v5, :cond_a

    .line 838
    move-object v1, v5

    .line 839
    iget-wide v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 841
    :cond_a
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 842
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->reload()V

    .line 843
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->waitForWakeUp()V

    goto/16 :goto_1

    .line 848
    .end local v5    # "tle":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_b
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 849
    sget-object v6, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->PAUSE:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    goto/16 :goto_2

    .line 853
    :cond_c
    iput-wide v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 854
    invoke-direct {p0, v1}, Lcom/android/mms/dom/smil/SmilPlayer;->actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V

    .line 785
    iget v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    goto/16 :goto_0

    .line 857
    .end local v1    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .end local v2    # "offset":J
    :cond_d
    sget-object v6, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PLAYED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    .line 777
    return-void
.end method

.method public declared-synchronized start()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 354
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->resumeActiveElements()V

    .line 356
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->START:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 357
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 353
    return-void

    .line 358
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 361
    :cond_1
    :try_start_2
    const-string/jumbo v0, "Error State: Playback can not be started!"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 366
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 367
    :cond_0
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->STOP:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 368
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    .line 365
    return-void

    .line 369
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
