.class public final enum Lwd/b$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwd/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwd/b$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwd/b$b;

.field public static final enum ButtonElements:Lwd/b$b;

.field public static final enum CustomView:Lwd/b$b;

.field public static final enum Folder:Lwd/b$b;

.field public static final enum Item:Lwd/b$b;

.field public static final enum Separator:Lwd/b$b;

.field public static final enum Tittle:Lwd/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lwd/b$b;

    const-string v1, "Folder"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lwd/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lwd/b$b;->Folder:Lwd/b$b;

    new-instance v0, Lwd/b$b;

    const-string v1, "Item"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lwd/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lwd/b$b;->Item:Lwd/b$b;

    new-instance v0, Lwd/b$b;

    const-string v1, "Tittle"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lwd/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lwd/b$b;->Tittle:Lwd/b$b;

    new-instance v0, Lwd/b$b;

    const-string v1, "Separator"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lwd/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lwd/b$b;->Separator:Lwd/b$b;

    new-instance v0, Lwd/b$b;

    const-string v1, "CustomView"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lwd/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lwd/b$b;->CustomView:Lwd/b$b;

    new-instance v0, Lwd/b$b;

    const-string v1, "ButtonElements"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lwd/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lwd/b$b;->ButtonElements:Lwd/b$b;

    invoke-static {}, Lwd/b$b;->a()[Lwd/b$b;

    move-result-object v0

    sput-object v0, Lwd/b$b;->$VALUES:[Lwd/b$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lwd/b$b;
    .locals 6

    sget-object v0, Lwd/b$b;->Folder:Lwd/b$b;

    sget-object v1, Lwd/b$b;->Item:Lwd/b$b;

    sget-object v2, Lwd/b$b;->Tittle:Lwd/b$b;

    sget-object v3, Lwd/b$b;->Separator:Lwd/b$b;

    sget-object v4, Lwd/b$b;->CustomView:Lwd/b$b;

    sget-object v5, Lwd/b$b;->ButtonElements:Lwd/b$b;

    filled-new-array/range {v0 .. v5}, [Lwd/b$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lwd/b$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lwd/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwd/b$b;

    return-object p0
.end method

.method public static values()[Lwd/b$b;
    .locals 1

    sget-object v0, Lwd/b$b;->$VALUES:[Lwd/b$b;

    invoke-virtual {v0}, [Lwd/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwd/b$b;

    return-object v0
.end method
