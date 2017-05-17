.class public abstract Lcom/android/incallui/callwidget/SomcLocalCallWidget;
.super Ljava/lang/Object;
.source "SomcLocalCallWidget.java"

# interfaces
.implements Lcom/android/incallui/callwidget/ISomcCallWidget;


# instance fields
.field protected mActionHandler:Lcom/android/incallui/callwidget/ISomcCallWidget$WidgetActionHandler;

.field private mBackgroundColor:I

.field private mContext:Landroid/content/Context;

.field private mIcon:I

.field private mIconDisabled:I

.field private mIconPressed:I

.field private mPrio:I

.field private mStatus:I

.field private mText:Ljava/lang/String;

.field private mTextColor:I

.field private mVisible:Z

.field private mVisibleAfterCall:Z

.field private mVisibleDuringCall:Z

.field private mVisibleWhenCalling:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/callwidget/SomcLocalCallWidget;->mVisible:Z

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/callwidget/SomcLocalCallWidget;->mStatus:I

    .line 44
    iput-object p1, p0, Lcom/android/incallui/callwidget/SomcLocalCallWidget;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method private getDrawableFromRes(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/incallui/callwidget/SomcLocalCallWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActionHandler()Lcom/android/incallui/callwidget/ISomcCallWidget$WidgetActionHandler;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/incallui/callwidget/SomcLocalCallWidget;->mActionHandler:Lcom/android/incallui/callwidget/ISomcCallWidget$WidgetActionHandler;

    return-object v0
.end method

.method public getButtonBackgroundColor()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/android/incallui/callwidget/SomcLocalCallWidget;->mBackgroundColor:I

    return v0
.end method

.method public getButtonTextColor()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/android/incallui/callwidget/SomcLocalCallWidget;->mTextColor:I

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/incallui/callwidget/SomcLocalCallWidget;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisabledIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/android/incallui/callwidget/SomcLocalCallWidget;->mIconDisabled:I

    invoke-direct {p0, v0}, Lcom/android/incallui/callwidget/SomcLocalCallWidget;->getDrawableFromRes(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/android/incallui/callwidget/SomcLocalCallWidget;->mIcon:I

    invoke-direct {p0, v0}, Lcom/android/incallui/callwidget/SomcLocalCallWidget;->getDrawableFromRes(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIconPressed()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/android/incallui/callwidget/SomcLocalCallWidget;->mIconPressed:I

    invoke-direct {p0, v0}, Lcom/android/incallui/callwidget/SomcLocalCallWidget;->getDrawableFromRes(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrio()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/android/incallui/callwidget/SomcLocalCallWidget;->mPrio:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/android/incallui/callwidget/SomcLocalCallWidget;->mStatus:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/incallui/callwidget/SomcLocalCallWidget;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibleAfterCall()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/incallui/callwidget/SomcLocalCallWidget;->mVisibleAfterCall:Z

    return v0
.end method

.method public getVisibleDuringCall()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/incallui/callwidget/SomcLocalCallWidget;->mVisibleDuringCall:Z

    return v0
.end method

.method public getVisibleWhenCalling()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/incallui/callwidget/SomcLocalCallWidget;->mVisibleWhenCalling:Z

    return v0
.end method

.method public hasPhoneStateAccess()Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/incallui/callwidget/SomcLocalCallWidget;->mVisible:Z

    return v0
.end method

.method public setButtonBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/android/incallui/callwidget/SomcLocalCallWidget;->mBackgroundColor:I

    .line 104
    return-void
.end method

.method public setButtonTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/android/incallui/callwidget/SomcLocalCallWidget;->mTextColor:I

    .line 120
    return-void
.end method

.method public setIcon(II)V
    .locals 0
    .param p1, "iconId"    # I
    .param p2, "state"    # I

    .prologue
    .line 92
    packed-switch p2, :pswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 94
    :pswitch_0
    iput p1, p0, Lcom/android/incallui/callwidget/SomcLocalCallWidget;->mIcon:I

    goto :goto_0

    .line 97
    :pswitch_1
    iput p1, p0, Lcom/android/incallui/callwidget/SomcLocalCallWidget;->mIconDisabled:I

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 177
    iput p1, p0, Lcom/android/incallui/callwidget/SomcLocalCallWidget;->mStatus:I

    .line 176
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/incallui/callwidget/SomcLocalCallWidget;->mText:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/android/incallui/callwidget/SomcLocalCallWidget;->mVisible:Z

    .line 168
    return-void
.end method
