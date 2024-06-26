.class public abstract Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub;
.super Landroid/os/Binder;
.source "ISmartRatSwitch.java"

# interfaces
.implements Lcom/mediatek/smartratswitch/ISmartRatSwitch;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/smartratswitch/ISmartRatSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_configWokingMode:I = 0x5

.field static final blacklist TRANSACTION_forceDisable5G:I = 0x4

.field static final blacklist TRANSACTION_forceEnable5G:I = 0x3

.field static final blacklist TRANSACTION_getLastOperation:I = 0x2

.field static final blacklist TRANSACTION_resetKeepRatDuration:I = 0x7

.field static final blacklist TRANSACTION_resetNextTput:I = 0x9

.field static final blacklist TRANSACTION_setCustAppProperty:I = 0x1

.field static final blacklist TRANSACTION_setKeepRatDuration:I = 0x6

.field static final blacklist TRANSACTION_setNextTput:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 80
    const-string v0, "com.mediatek.smartratswitch.ISmartRatSwitch"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/mediatek/smartratswitch/ISmartRatSwitch;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 88
    if-nez p0, :cond_0

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_0
    const-string v0, "com.mediatek.smartratswitch.ISmartRatSwitch"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 92
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/smartratswitch/ISmartRatSwitch;

    if-eqz v1, :cond_1

    .line 93
    move-object v1, v0

    check-cast v1, Lcom/mediatek/smartratswitch/ISmartRatSwitch;

    return-object v1

    .line 95
    :cond_1
    new-instance v1, Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultImpl()Lcom/mediatek/smartratswitch/ISmartRatSwitch;
    .locals 1

    .line 463
    sget-object v0, Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/smartratswitch/ISmartRatSwitch;

    return-object v0
.end method

.method public static blacklist setDefaultImpl(Lcom/mediatek/smartratswitch/ISmartRatSwitch;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/smartratswitch/ISmartRatSwitch;

    .line 453
    sget-object v0, Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/smartratswitch/ISmartRatSwitch;

    if-nez v0, :cond_1

    .line 456
    if-eqz p0, :cond_0

    .line 457
    sput-object p0, Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/smartratswitch/ISmartRatSwitch;

    .line 458
    const/4 v0, 0x1

    return v0

    .line 460
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 454
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 99
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    const-string v0, "com.mediatek.smartratswitch.ISmartRatSwitch"

    .line 104
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 112
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_1

    .line 200
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 108
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    return v1

    .line 191
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub;->resetNextTput(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    return v1

    .line 178
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 182
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 184
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 185
    .local v4, "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub;->setNextTput(Ljava/lang/String;II)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    return v1

    .line 171
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub;->resetKeepRatDuration()V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    return v1

    .line 162
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 165
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub;->setKeepRatDuration(I)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    return v1

    .line 153
    .end local v2    # "_arg0":I
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 156
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub;->configWokingMode(I)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    return v1

    .line 144
    .end local v2    # "_arg0":I
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    .line 147
    .local v2, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v2}, Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub;->forceDisable5G(Z)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    return v1

    .line 135
    .end local v2    # "_arg0":Z
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    .line 138
    .restart local v2    # "_arg0":Z
    :cond_1
    invoke-virtual {p0, v2}, Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub;->forceEnable5G(Z)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    return v1

    .line 127
    .end local v2    # "_arg0":Z
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub;->getLastOperation()I

    move-result v2

    .line 129
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    return v1

    .line 116
    .end local v2    # "_result":I
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 121
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub;->setCustAppProperty(Ljava/lang/String;I)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
