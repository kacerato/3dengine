.class public final Lcf/F;
.super LTe/c;
.source "SourceFile"


# static fields
.field public static final b:LTe/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcf/F;

    invoke-direct {v0}, Lcf/F;-><init>()V

    sput-object v0, Lcf/F;->b:LTe/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LTe/c;-><init>()V

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 1

    sget-object v0, LYe/e;->NEVER:LYe/e;

    invoke-interface {p1, v0}, LTe/f;->e(LVe/c;)V

    return-void
.end method
