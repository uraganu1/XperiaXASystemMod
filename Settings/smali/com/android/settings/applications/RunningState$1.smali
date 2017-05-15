.class Lcom/android/settings/applications/RunningState$1;
.super Ljava/lang/Object;
.source "RunningState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningState;
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
        "Lcom/android/settings/applications/RunningState$MergedItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/RunningState;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/RunningState;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/settings/applications/RunningState$1;->this$0:Lcom/android/settings/applications/RunningState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/applications/RunningState$MergedItem;Lcom/android/settings/applications/RunningState$MergedItem;)I
    .locals 12
    .param p1, "lhs"    # Lcom/android/settings/applications/RunningState$MergedItem;
    .param p2, "rhs"    # Lcom/android/settings/applications/RunningState$MergedItem;

    .prologue
    const/16 v11, 0x190

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 158
    iget v8, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget v9, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    if-eq v8, v9, :cond_3

    .line 159
    iget v8, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget-object v9, p0, Lcom/android/settings/applications/RunningState$1;->this$0:Lcom/android/settings/applications/RunningState;

    iget v9, v9, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-ne v8, v9, :cond_0

    return v6

    .line 160
    :cond_0
    iget v8, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget-object v9, p0, Lcom/android/settings/applications/RunningState$1;->this$0:Lcom/android/settings/applications/RunningState;

    iget v9, v9, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-ne v8, v9, :cond_1

    return v7

    .line 161
    :cond_1
    iget v8, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget v9, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    if-ge v8, v9, :cond_2

    :goto_0
    return v6

    :cond_2
    move v6, v7

    goto :goto_0

    .line 163
    :cond_3
    iget-object v8, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v9, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-ne v8, v9, :cond_6

    .line 164
    iget-object v7, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    iget-object v8, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    if-ne v7, v8, :cond_4

    .line 165
    return v10

    .line 167
    :cond_4
    iget-object v7, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v6, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    iget-object v7, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    :cond_5
    return v6

    .line 169
    :cond_6
    iget-object v8, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v8, :cond_7

    return v6

    .line 170
    :cond_7
    iget-object v8, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v8, :cond_8

    return v7

    .line 174
    :cond_8
    iget-object v8, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 173
    iget-object v2, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 176
    .local v2, "lhsInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v8, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 175
    iget-object v5, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 177
    .local v5, "rhsInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v8, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-lt v8, v11, :cond_9

    const/4 v1, 0x1

    .line 179
    .local v1, "lhsBg":Z
    :goto_1
    iget v8, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-lt v8, v11, :cond_a

    const/4 v4, 0x1

    .line 182
    .local v4, "rhsBg":Z
    :goto_2
    if-eq v1, v4, :cond_c

    .line 183
    if-eqz v1, :cond_b

    :goto_3
    return v7

    .line 177
    .end local v1    # "lhsBg":Z
    .end local v4    # "rhsBg":Z
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "lhsBg":Z
    goto :goto_1

    .line 179
    :cond_a
    const/4 v4, 0x0

    .restart local v4    # "rhsBg":Z
    goto :goto_2

    :cond_b
    move v7, v6

    .line 183
    goto :goto_3

    .line 185
    :cond_c
    iget v8, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_d

    const/4 v0, 0x1

    .line 187
    .local v0, "lhsA":Z
    :goto_4
    iget v8, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_e

    const/4 v3, 0x1

    .line 190
    .local v3, "rhsA":Z
    :goto_5
    if-eq v0, v3, :cond_10

    .line 191
    if-eqz v0, :cond_f

    :goto_6
    return v6

    .line 185
    .end local v0    # "lhsA":Z
    .end local v3    # "rhsA":Z
    :cond_d
    const/4 v0, 0x0

    .restart local v0    # "lhsA":Z
    goto :goto_4

    .line 187
    :cond_e
    const/4 v3, 0x0

    .restart local v3    # "rhsA":Z
    goto :goto_5

    :cond_f
    move v6, v7

    .line 191
    goto :goto_6

    .line 194
    :cond_10
    iget v8, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    iget v9, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    if-eq v8, v9, :cond_12

    .line 195
    iget v8, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    iget v9, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    if-ge v8, v9, :cond_11

    :goto_7
    return v6

    :cond_11
    move v6, v7

    goto :goto_7

    .line 197
    :cond_12
    iget-object v8, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v8, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    iget-object v9, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v9, v9, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    if-ne v8, v9, :cond_13

    .line 198
    return v10

    .line 200
    :cond_13
    iget-object v8, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v8, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    if-nez v8, :cond_14

    return v7

    .line 201
    :cond_14
    iget-object v7, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v7, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    if-nez v7, :cond_15

    return v6

    .line 202
    :cond_15
    iget-object v6, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v6, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    iget-object v7, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v7, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    return v6
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 152
    check-cast p1, Lcom/android/settings/applications/RunningState$MergedItem;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/android/settings/applications/RunningState$MergedItem;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/RunningState$1;->compare(Lcom/android/settings/applications/RunningState$MergedItem;Lcom/android/settings/applications/RunningState$MergedItem;)I

    move-result v0

    return v0
.end method
