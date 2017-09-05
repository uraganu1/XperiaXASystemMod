.class Lcom/android/systemui/power/PowerNotificationWarnings$6;
.super Landroid/content/AsyncQueryHandler;
.source "PowerNotificationWarnings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;->checkUsmEnabled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerNotificationWarnings;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/power/PowerNotificationWarnings;
    .param p2, "$anonymous0"    # Landroid/content/ContentResolver;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$6;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 183
    if-eqz p3, :cond_1

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$6;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    const-string/jumbo v0, "enabled"

    .line 186
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 185
    :goto_0
    invoke-static {v1, v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->-set2(Lcom/android/systemui/power/PowerNotificationWarnings;Z)Z

    .line 188
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$6;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get6(Lcom/android/systemui/power/PowerNotificationWarnings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$6;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-virtual {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryWarning()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 182
    :cond_1
    return-void

    .line 185
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    .line 192
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 191
    throw v0
.end method
