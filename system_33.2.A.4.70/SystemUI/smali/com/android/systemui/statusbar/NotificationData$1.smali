.class Lcom/android/systemui/statusbar/NotificationData$1;
.super Ljava/lang/Object;
.source "NotificationData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/systemui/statusbar/NotificationData$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

.field private final mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationData;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationData;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationData;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 137
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 135
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I
    .locals 18
    .param p1, "a"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "b"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 141
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 142
    .local v11, "na":Landroid/service/notification/StatusBarNotification;
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 143
    .local v12, "nb":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    iget v3, v13, Landroid/app/Notification;->priority:I

    .line 144
    .local v3, "aPriority":I
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    iget v6, v13, Landroid/app/Notification;->priority:I

    .line 146
    .local v6, "bPriority":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v13}, Lcom/android/systemui/statusbar/NotificationData;->-get0(Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/NotificationData$Environment;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/systemui/statusbar/NotificationData$Environment;->getCurrentMediaNotificationKey()Ljava/lang/String;

    move-result-object v10

    .line 149
    .local v10, "mediaNotification":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 150
    const/4 v13, -0x2

    if-le v3, v13, :cond_0

    const/4 v2, 0x1

    .line 151
    .local v2, "aMedia":Z
    :goto_0
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 152
    const/4 v13, -0x2

    if-le v6, v13, :cond_2

    const/4 v5, 0x1

    .line 154
    .local v5, "bMedia":Z
    :goto_1
    const/4 v13, 0x2

    if-lt v3, v13, :cond_4

    .line 155
    invoke-static {v11}, Lcom/android/systemui/statusbar/NotificationData;->-wrap0(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    .line 156
    :goto_2
    const/4 v13, 0x2

    if-lt v6, v13, :cond_5

    .line 157
    invoke-static {v12}, Lcom/android/systemui/statusbar/NotificationData;->-wrap0(Landroid/service/notification/StatusBarNotification;)Z

    move-result v7

    .line 158
    :goto_3
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v13

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v14

    sub-int v8, v13, v14

    .line 160
    .local v8, "d":I
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v9

    .line 161
    .local v9, "isHeadsUp":Z
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v13

    if-eq v9, v13, :cond_7

    .line 162
    if-eqz v9, :cond_6

    const/4 v13, -0x1

    :goto_4
    return v13

    .line 150
    .end local v2    # "aMedia":Z
    .end local v5    # "bMedia":Z
    .end local v8    # "d":I
    .end local v9    # "isHeadsUp":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "aMedia":Z
    goto :goto_0

    .line 149
    .end local v2    # "aMedia":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "aMedia":Z
    goto :goto_0

    .line 152
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "bMedia":Z
    goto :goto_1

    .line 151
    .end local v5    # "bMedia":Z
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "bMedia":Z
    goto :goto_1

    .line 154
    :cond_4
    const/4 v4, 0x0

    .local v4, "aSystemMax":Z
    goto :goto_2

    .line 156
    .end local v4    # "aSystemMax":Z
    :cond_5
    const/4 v7, 0x0

    .local v7, "bSystemMax":Z
    goto :goto_3

    .line 162
    .end local v7    # "bSystemMax":Z
    .restart local v8    # "d":I
    .restart local v9    # "isHeadsUp":Z
    :cond_6
    const/4 v13, 0x1

    goto :goto_4

    .line 163
    :cond_7
    if-eqz v9, :cond_8

    .line 165
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v13}, Lcom/android/systemui/statusbar/NotificationData;->-get1(Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object v13

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v13

    return v13

    .line 166
    :cond_8
    if-eq v2, v5, :cond_a

    .line 168
    if-eqz v2, :cond_9

    const/4 v13, -0x1

    :goto_5
    return v13

    :cond_9
    const/4 v13, 0x1

    goto :goto_5

    .line 169
    :cond_a
    if-eq v4, v7, :cond_c

    .line 171
    if-eqz v4, :cond_b

    const/4 v13, -0x1

    :goto_6
    return v13

    :cond_b
    const/4 v13, 0x1

    goto :goto_6

    .line 172
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v13}, Lcom/android/systemui/statusbar/NotificationData;->-get2(Lcom/android/systemui/statusbar/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v13

    if-eqz v13, :cond_d

    .line 174
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v13}, Lcom/android/systemui/statusbar/NotificationData;->-get2(Lcom/android/systemui/statusbar/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v13, v14, v15}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 175
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v13}, Lcom/android/systemui/statusbar/NotificationData;->-get2(Lcom/android/systemui/statusbar/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v13

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v13, v14, v15}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 176
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v13}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v14}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v14

    sub-int/2addr v13, v14

    return v13

    .line 177
    :cond_d
    if-eqz v8, :cond_e

    .line 178
    return v8

    .line 180
    :cond_e
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    iget-wide v14, v13, Landroid/app/Notification;->when:J

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    iget-wide v0, v13, Landroid/app/Notification;->when:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-int v13, v14

    return v13
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .prologue
    .line 140
    check-cast p1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .end local p1    # "a":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .end local p2    # "b":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationData$1;->compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v0

    return v0
.end method
