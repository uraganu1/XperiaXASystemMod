.class public interface abstract Lcom/android/incallui/callwidget/ISomcCallWidget;
.super Ljava/lang/Object;
.source "ISomcCallWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/callwidget/ISomcCallWidget$WidgetActionHandler;
    }
.end annotation


# virtual methods
.method public abstract getActionHandler()Lcom/android/incallui/callwidget/ISomcCallWidget$WidgetActionHandler;
.end method

.method public abstract getButtonBackgroundColor()I
.end method

.method public abstract getButtonTextColor()I
.end method

.method public abstract getClassName()Ljava/lang/String;
.end method

.method public abstract getDisabledIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getIconPressed()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getPackage()Ljava/lang/String;
.end method

.method public abstract getPrio()I
.end method

.method public abstract getStatus()I
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getVisibleAfterCall()Z
.end method

.method public abstract getVisibleDuringCall()Z
.end method

.method public abstract getVisibleWhenCalling()Z
.end method

.method public abstract hasPhoneStateAccess()Z
.end method

.method public abstract isVisible()Z
.end method

.method public abstract setButtonBackgroundColor(I)V
.end method

.method public abstract setButtonTextColor(I)V
.end method

.method public abstract setIcon(II)V
.end method

.method public abstract setStatus(I)V
.end method

.method public abstract setText(Ljava/lang/String;)V
.end method

.method public abstract setVisible(Z)V
.end method
