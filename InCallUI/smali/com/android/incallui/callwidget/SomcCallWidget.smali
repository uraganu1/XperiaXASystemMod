.class public Lcom/android/incallui/callwidget/SomcCallWidget;
.super Ljava/lang/Object;
.source "SomcCallWidget.java"

# interfaces
.implements Lcom/android/incallui/callwidget/ISomcCallWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;
    }
.end annotation


# static fields
.field private static synthetic -com_android_incallui_callwidget_SomcCallWidget$WidgetPropertySwitchesValues:[I


# instance fields
.field private mActionHandler:Lcom/android/incallui/callwidget/ISomcCallWidget$WidgetActionHandler;

.field private mBackgroundColor:I

.field private mIconDisabled:I

.field private mIconId:I

.field private mIconPressed:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPrio:I

.field private mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private mStatus:I

.field private mText:Ljava/lang/String;

.field private mTextColor:I

.field private mVisible:Z

.field private mVisibleAfterCall:Z

.field private mVisibleDuringCall:Z

.field private mVisibleWhenCalling:Z


# direct methods
.method private static synthetic -getcom_android_incallui_callwidget_SomcCallWidget$WidgetPropertySwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/incallui/callwidget/SomcCallWidget;->-com_android_incallui_callwidget_SomcCallWidget$WidgetPropertySwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/callwidget/SomcCallWidget;->-com_android_incallui_callwidget_SomcCallWidget$WidgetPropertySwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->values()[Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->iconDisabled:Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    invoke-virtual {v1}, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->iconPressed:Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    invoke-virtual {v1}, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->prio:Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    invoke-virtual {v1}, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->status:Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    invoke-virtual {v1}, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->visible:Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    invoke-virtual {v1}, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->visibleAfterCall:Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    invoke-virtual {v1}, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->visibleDuringCall:Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    invoke-virtual {v1}, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->visibleWhenCalling:Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    invoke-virtual {v1}, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    sput-object v0, Lcom/android/incallui/callwidget/SomcCallWidget;->-com_android_incallui_callwidget_SomcCallWidget$WidgetPropertySwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1

    :catch_7
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)V
    .locals 2
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mVisible:Z

    .line 38
    iput v1, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mStatus:I

    .line 62
    iput-object p2, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 63
    iput v1, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mBackgroundColor:I

    .line 64
    iput v1, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mTextColor:I

    .line 65
    new-instance v0, Lcom/android/incallui/callwidget/SomcDefaultWidgetActionHandler;

    invoke-direct {v0}, Lcom/android/incallui/callwidget/SomcDefaultWidgetActionHandler;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mActionHandler:Lcom/android/incallui/callwidget/ISomcCallWidget$WidgetActionHandler;

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/incallui/callwidget/SomcCallWidget;->setResolveInfo(Landroid/content/pm/ResolveInfo;)V

    .line 61
    return-void
.end method

.method private convertStatusValueFromString(Ljava/lang/String;)I
    .locals 1
    .param p1, "attrValue"    # Ljava/lang/String;

    .prologue
    .line 222
    const-string/jumbo v0, "DISABLED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const/4 v0, 0x1

    return v0

    .line 225
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getIntegerValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "attrValue"    # Ljava/lang/String;

    .prologue
    .line 213
    const/4 v1, -0x1

    .line 215
    .local v1, "res":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 218
    :goto_0
    return v1

    .line 216
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private loadIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "resId"    # I

    .prologue
    const/4 v5, 0x0

    .line 159
    iget-object v3, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 160
    iget-object v3, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4, p1, v5}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 161
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 162
    return-object v2

    .line 165
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 166
    .local v1, "ci":Landroid/content/pm/ComponentInfo;
    iget-object v0, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 167
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz p1, :cond_1

    .line 168
    iget-object v3, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, p1, v0}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 169
    .restart local v2    # "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 170
    return-object v2

    .line 173
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ComponentInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3
.end method

.method private loadWidgetMetadata(Landroid/content/pm/ResolveInfo;)V
    .locals 11
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 229
    const/4 v5, 0x0

    .line 231
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v8, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 232
    const-string/jumbo v10, "com.sonymobile.callwidget.provider"

    .line 231
    invoke-virtual {v8, v9, v10}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 233
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v5, :cond_0

    .line 234
    const-string/jumbo v8, "CallWidget"

    const-string/jumbo v9, "Error loadXmlMetaData"

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void

    .line 237
    :cond_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    .line 238
    .local v7, "type":I
    :goto_0
    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    .line 240
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    goto :goto_0

    .line 242
    :cond_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 243
    .local v4, "nodeName":Ljava/lang/String;
    const-string/jumbo v8, "callwidget-provider"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 244
    const-string/jumbo v8, "CallWidget"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Meta-data does not start with callwidget-provider tag for CallWidget provider \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 245
    iget-object v10, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 244
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 245
    const/16 v10, 0x27

    .line 244
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_2
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v1

    .line 248
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 250
    invoke-interface {v5, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "attrName":Ljava/lang/String;
    const-string/jumbo v8, "CallWidget"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "loadWidgetMetadata attrName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 252
    const-string/jumbo v10, " val:"

    .line 251
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 252
    invoke-interface {v5, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    .line 251
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 255
    :try_start_1
    invoke-static {v0}, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->valueOf(Ljava/lang/String;)Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    move-result-object v6

    .line 256
    .local v6, "prop":Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;
    invoke-static {}, Lcom/android/incallui/callwidget/SomcCallWidget;->-getcom_android_incallui_callwidget_SomcCallWidget$WidgetPropertySwitchesValues()[I

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 248
    .end local v6    # "prop":Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 258
    .restart local v6    # "prop":Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;
    :pswitch_0
    invoke-interface {v5, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/incallui/callwidget/SomcCallWidget;->getIntegerValue(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mPrio:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 282
    .end local v6    # "prop":Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;
    :catch_0
    move-exception v2

    .line 283
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v8, "CallWidget"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown attribute: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 286
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v1    # "count":I
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i":I
    .end local v4    # "nodeName":Ljava/lang/String;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v7    # "type":I
    :catch_1
    move-exception v2

    .line 287
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    return-void

    .line 261
    .restart local v0    # "attrName":Ljava/lang/String;
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "nodeName":Ljava/lang/String;
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v6    # "prop":Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;
    .restart local v7    # "type":I
    :pswitch_1
    const/4 v8, 0x0

    :try_start_3
    invoke-interface {v5, v3, v8}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(II)I

    move-result v8

    iput v8, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mIconPressed:I

    goto :goto_2

    .line 264
    :pswitch_2
    const/4 v8, 0x0

    invoke-interface {v5, v3, v8}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(II)I

    move-result v8

    iput v8, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mIconDisabled:I

    goto :goto_2

    .line 267
    :pswitch_3
    invoke-interface {v5, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mVisible:Z

    goto :goto_2

    .line 270
    :pswitch_4
    invoke-interface {v5, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/incallui/callwidget/SomcCallWidget;->convertStatusValueFromString(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mStatus:I

    goto :goto_2

    .line 273
    :pswitch_5
    invoke-interface {v5, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mVisibleWhenCalling:Z

    goto :goto_2

    .line 276
    :pswitch_6
    invoke-interface {v5, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mVisibleDuringCall:Z

    goto :goto_2

    .line 279
    :pswitch_7
    invoke-interface {v5, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mVisibleAfterCall:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public getActionHandler()Lcom/android/incallui/callwidget/ISomcCallWidget$WidgetActionHandler;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mActionHandler:Lcom/android/incallui/callwidget/ISomcCallWidget$WidgetActionHandler;

    return-object v0
.end method

.method public getButtonBackgroundColor()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mBackgroundColor:I

    return v0
.end method

.method public getButtonTextColor()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mTextColor:I

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getDisabledIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mIconDisabled:I

    invoke-direct {p0, v0}, Lcom/android/incallui/callwidget/SomcCallWidget;->loadIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mIconId:I

    invoke-direct {p0, v0}, Lcom/android/incallui/callwidget/SomcCallWidget;->loadIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIconPressed()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mIconPressed:I

    invoke-direct {p0, v0}, Lcom/android/incallui/callwidget/SomcCallWidget;->loadIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrio()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mPrio:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mStatus:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v0
.end method

.method public getVisibleAfterCall()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mVisibleAfterCall:Z

    return v0
.end method

.method public getVisibleDuringCall()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mVisibleDuringCall:Z

    return v0
.end method

.method public getVisibleWhenCalling()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mVisibleWhenCalling:Z

    return v0
.end method

.method public hasPhoneStateAccess()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 181
    iget-object v4, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 183
    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 184
    const/16 v6, 0x1000

    .line 183
    invoke-virtual {v4, v2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 186
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 187
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v7, v6

    move v4, v5

    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v3, v6, v4

    .line 188
    .local v3, "permission":Ljava/lang/String;
    const-string/jumbo v8, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_0

    .line 189
    const/4 v4, 0x1

    return v4

    .line 187
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 193
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "permission":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "CallWidget"

    const-string/jumbo v6, "hasPhoneStateAccess() Could not retrieve requested permissions"

    invoke-static {v4, v6, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 196
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const-string/jumbo v4, "CallWidget"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Widget "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " does not have READ_PHONE_STATE permission"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return v5
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mVisible:Z

    return v0
.end method

.method public reloadText()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 135
    iget-object v1, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 136
    .local v0, "loadlabel":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mText:Ljava/lang/String;

    .line 134
    :goto_0
    return-void

    .line 139
    :cond_0
    iput-object v3, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mText:Ljava/lang/String;

    goto :goto_0
.end method

.method public setButtonBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mBackgroundColor:I

    .line 110
    return-void
.end method

.method public setButtonTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mTextColor:I

    .line 126
    return-void
.end method

.method public setIcon(II)V
    .locals 3
    .param p1, "iconId"    # I
    .param p2, "state"    # I

    .prologue
    .line 98
    packed-switch p2, :pswitch_data_0

    .line 106
    const-string/jumbo v0, "CallWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting icon with unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iput p1, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mIconId:I

    goto :goto_0

    .line 103
    :pswitch_1
    iput p1, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mIconDisabled:I

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setResolveInfo(Landroid/content/pm/ResolveInfo;)V
    .locals 3
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v2, 0x0

    .line 70
    iput-object p1, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 71
    invoke-direct {p0, p1}, Lcom/android/incallui/callwidget/SomcCallWidget;->loadWidgetMetadata(Landroid/content/pm/ResolveInfo;)V

    .line 72
    iget v1, p1, Landroid/content/pm/ResolveInfo;->icon:I

    iput v1, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mIconId:I

    .line 73
    iget-object v1, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 74
    .local v0, "loadlabel":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mText:Ljava/lang/String;

    .line 69
    :goto_0
    return-void

    .line 77
    :cond_0
    iput-object v2, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mText:Ljava/lang/String;

    goto :goto_0
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 304
    iput p1, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mStatus:I

    .line 303
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mText:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 296
    iput-boolean p1, p0, Lcom/android/incallui/callwidget/SomcCallWidget;->mVisible:Z

    .line 295
    return-void
.end method
