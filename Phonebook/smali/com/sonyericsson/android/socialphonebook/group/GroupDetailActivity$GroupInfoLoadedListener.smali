.class final Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity$GroupInfoLoadedListener;
.super Ljava/lang/Object;
.source "GroupDetailActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$OnGroupLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GroupInfoLoadedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity$GroupInfoLoadedListener;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity$GroupInfoLoadedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity$GroupInfoLoadedListener;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;)V

    return-void
.end method


# virtual methods
.method public onGroupLoaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "dataSet"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity$GroupInfoLoadedListener;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;->-set2(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity$GroupInfoLoadedListener;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;

    invoke-static {v0, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;->-set1(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity$GroupInfoLoadedListener;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;

    invoke-static {v0, p3}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;->-set0(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity$GroupInfoLoadedListener;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;->-wrap0(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailActivity;)V

    .line 87
    return-void
.end method
