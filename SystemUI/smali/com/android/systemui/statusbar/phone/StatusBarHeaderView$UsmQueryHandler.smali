.class Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$UsmQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "StatusBarHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsmQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 982
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$UsmQueryHandler;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .line 983
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 982
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 988
    if-eqz p3, :cond_0

    .line 990
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$UsmQueryHandler;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 991
    const-string/jumbo v0, "enabled"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 990
    :goto_0
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->-set2(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;Z)Z

    .line 992
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$UsmQueryHandler;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->-wrap5(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 994
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 987
    :cond_0
    return-void

    .line 990
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 993
    :catchall_0
    move-exception v0

    .line 994
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 993
    throw v0
.end method
