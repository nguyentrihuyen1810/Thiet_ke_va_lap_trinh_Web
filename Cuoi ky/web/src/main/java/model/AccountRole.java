package model;

public class AccountRole {
    private Long accountRoleId;
    private Long accountId;
    private Long roleId;

    public AccountRole() {
    }

    public AccountRole(Long accountRoleId, Long accountId, Long roleId) {
        this.accountRoleId = accountRoleId;
        this.accountId = accountId;
        this.roleId = roleId;
    }

    public Long getAccountRoleId() {
        return accountRoleId;
    }

    public void setAccountRoleId(Long accountRoleId) {
        this.accountRoleId = accountRoleId;
    }

    public Long getAccountId() {
        return accountId;
    }

    public void setAccountId(Long accountId) {
        this.accountId = accountId;
    }

    public Long getRoleId() {
        return roleId;
    }

    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }
}
