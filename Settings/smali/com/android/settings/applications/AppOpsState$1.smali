.class final Lcom/android/settings/applications/AppOpsState$1;
.super Ljava/lang/Object;
.source "AppOpsState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppOpsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState$1;->sCollator:Ljava/text/Collator;

    .line 423
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/applications/AppOpsState$AppOpEntry;Lcom/android/settings/applications/AppOpsState$AppOpEntry;)I
    .locals 6
    .param p1, "object1"    # Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    .param p2, "object2"    # Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 427
    invoke-virtual {p1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getSwitchOrder()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getSwitchOrder()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 428
    invoke-virtual {p1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getSwitchOrder()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getSwitchOrder()I

    move-result v3

    if-ge v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 430
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->isRunning()Z

    move-result v2

    invoke-virtual {p2}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->isRunning()Z

    move-result v3

    if-eq v2, v3, :cond_3

    .line 432
    invoke-virtual {p1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 434
    :cond_3
    invoke-virtual {p1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 436
    invoke-virtual {p1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    :goto_2
    return v0

    :cond_4
    move v0, v1

    goto :goto_2

    .line 438
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$1;->sCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings/applications/AppOpsState$AppEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/applications/AppOpsState$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 439
    invoke-virtual {p2}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings/applications/AppOpsState$AppEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/applications/AppOpsState$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 438
    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;

    .prologue
    .line 426
    check-cast p1, Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    .end local p1    # "object1":Ljava/lang/Object;
    check-cast p2, Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    .end local p2    # "object2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/AppOpsState$1;->compare(Lcom/android/settings/applications/AppOpsState$AppOpEntry;Lcom/android/settings/applications/AppOpsState$AppOpEntry;)I

    move-result v0

    return v0
.end method
