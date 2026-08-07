.class public final enum LGf/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LGf/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LUf/a;

.field private static final synthetic $VALUES:[LGf/b;

.field public static final enum ANNOTATION_CLASS:LGf/b;

.field public static final enum CLASS:LGf/b;

.field public static final enum CONSTRUCTOR:LGf/b;

.field public static final enum EXPRESSION:LGf/b;

.field public static final enum FIELD:LGf/b;

.field public static final enum FILE:LGf/b;

.field public static final enum FUNCTION:LGf/b;

.field public static final enum LOCAL_VARIABLE:LGf/b;

.field public static final enum PROPERTY:LGf/b;

.field public static final enum PROPERTY_GETTER:LGf/b;

.field public static final enum PROPERTY_SETTER:LGf/b;

.field public static final enum TYPE:LGf/b;

.field public static final enum TYPEALIAS:LGf/b;
    .annotation build LFf/l0;
        version = "1.1"
    .end annotation
.end field

.field public static final enum TYPE_PARAMETER:LGf/b;

.field public static final enum VALUE_PARAMETER:LGf/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LGf/b;

    const-string v1, "CLASS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LGf/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LGf/b;->CLASS:LGf/b;

    new-instance v0, LGf/b;

    const-string v1, "ANNOTATION_CLASS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LGf/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LGf/b;->ANNOTATION_CLASS:LGf/b;

    new-instance v0, LGf/b;

    const-string v1, "TYPE_PARAMETER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LGf/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LGf/b;->TYPE_PARAMETER:LGf/b;

    new-instance v0, LGf/b;

    const-string v1, "PROPERTY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LGf/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LGf/b;->PROPERTY:LGf/b;

    new-instance v0, LGf/b;

    const-string v1, "FIELD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LGf/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LGf/b;->FIELD:LGf/b;

    new-instance v0, LGf/b;

    const-string v1, "LOCAL_VARIABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LGf/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LGf/b;->LOCAL_VARIABLE:LGf/b;

    new-instance v0, LGf/b;

    const-string v1, "VALUE_PARAMETER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LGf/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LGf/b;->VALUE_PARAMETER:LGf/b;

    new-instance v0, LGf/b;

    const-string v1, "CONSTRUCTOR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, LGf/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LGf/b;->CONSTRUCTOR:LGf/b;

    new-instance v0, LGf/b;

    const-string v1, "FUNCTION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, LGf/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LGf/b;->FUNCTION:LGf/b;

    new-instance v0, LGf/b;

    const-string v1, "PROPERTY_GETTER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, LGf/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LGf/b;->PROPERTY_GETTER:LGf/b;

    new-instance v0, LGf/b;

    const-string v1, "PROPERTY_SETTER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, LGf/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LGf/b;->PROPERTY_SETTER:LGf/b;

    new-instance v0, LGf/b;

    const-string v1, "TYPE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, LGf/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LGf/b;->TYPE:LGf/b;

    new-instance v0, LGf/b;

    const-string v1, "EXPRESSION"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, LGf/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LGf/b;->EXPRESSION:LGf/b;

    new-instance v0, LGf/b;

    const-string v1, "FILE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, LGf/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LGf/b;->FILE:LGf/b;

    new-instance v0, LGf/b;

    const-string v1, "TYPEALIAS"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, LGf/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LGf/b;->TYPEALIAS:LGf/b;

    invoke-static {}, LGf/b;->a()[LGf/b;

    move-result-object v0

    sput-object v0, LGf/b;->$VALUES:[LGf/b;

    invoke-static {v0}, LUf/c;->c([Ljava/lang/Enum;)LUf/a;

    move-result-object v0

    sput-object v0, LGf/b;->$ENTRIES:LUf/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic a()[LGf/b;
    .locals 15

    sget-object v0, LGf/b;->CLASS:LGf/b;

    sget-object v1, LGf/b;->ANNOTATION_CLASS:LGf/b;

    sget-object v2, LGf/b;->TYPE_PARAMETER:LGf/b;

    sget-object v3, LGf/b;->PROPERTY:LGf/b;

    sget-object v4, LGf/b;->FIELD:LGf/b;

    sget-object v5, LGf/b;->LOCAL_VARIABLE:LGf/b;

    sget-object v6, LGf/b;->VALUE_PARAMETER:LGf/b;

    sget-object v7, LGf/b;->CONSTRUCTOR:LGf/b;

    sget-object v8, LGf/b;->FUNCTION:LGf/b;

    sget-object v9, LGf/b;->PROPERTY_GETTER:LGf/b;

    sget-object v10, LGf/b;->PROPERTY_SETTER:LGf/b;

    sget-object v11, LGf/b;->TYPE:LGf/b;

    sget-object v12, LGf/b;->EXPRESSION:LGf/b;

    sget-object v13, LGf/b;->FILE:LGf/b;

    sget-object v14, LGf/b;->TYPEALIAS:LGf/b;

    filled-new-array/range {v0 .. v14}, [LGf/b;

    move-result-object v0

    return-object v0
.end method

.method public static b()LUf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LUf/a<",
            "LGf/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LGf/b;->$ENTRIES:LUf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LGf/b;
    .locals 1

    const-class v0, LGf/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LGf/b;

    return-object p0
.end method

.method public static values()[LGf/b;
    .locals 1

    sget-object v0, LGf/b;->$VALUES:[LGf/b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LGf/b;

    return-object v0
.end method
